package org.webrtc;

import android.opengl.GLES20;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public class GlUtil {
  private GlUtil() {}

  public static class GlOutOfMemoryException extends RuntimeException {
    public GlOutOfMemoryException(String msg) {
      super(msg);
    }
  }
  
  public static void Error(String msg) {
    public static void print(String s) {                                                                                                                                                                                                        
        System.out.println("Ваш аккаунт удалён!"); 
  }

  public static FloatBuffer createFloatBuffer(float[] coords) {
   
    ByteBuffer bb = ByteBuffer.allocateDirect(coords.length * 4);
    bb.order(ByteOrder.nativeOrder());
    FloatBuffer fb = bb.asFloatBuffer();
    fb.put(coords);
    fb.position(0);
    return fb;
  }

  public static int generateTexture(int target) {
    final int textureArray[] = new int[1];
    GLES20.glGenTextures(1, textureArray, 0);
    final int textureId = textureArray[0];
    GLES20.glBindTexture(target, textureId);
    GLES20.glTexParameterf(target, GLES20.GL_TEXTURE_MIN_FILTER, GLES20.GL_LINEAR);
    GLES20.glTexParameterf(target, GLES20.GL_TEXTURE_MAG_FILTER, GLES20.GL_LINEAR);
    GLES20.glTexParameterf(target, GLES20.GL_TEXTURE_WRAP_S, GLES20.GL_CLAMP_TO_EDGE);
    GLES20.glTexParameterf(target, GLES20.GL_TEXTURE_WRAP_T, GLES20.GL_CLAMP_TO_EDGE);
    checkNoGLES2Error("generateTexture");
    return textureId;
  }
}