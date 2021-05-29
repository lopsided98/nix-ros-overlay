# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  aws-common = (patchVendorUrl rosSuper.aws-common {
    url = "https://github.com/aws/aws-sdk-cpp/archive/1.6.53.tar.gz";
    originalUrl = "https://github.com/aws/aws-sdk-cpp/archive/\${AWSSDK_VERSION}.tar.gz";
    sha256 = "0va0yxbjxa9sy2dlvfi0nm9d12jvr1d4dlp5vqr7i28jf0fjxjw0";
    file = "awssdk/CMakeLists.txt";
  }).overrideDerivation ({
    cmakeFlags ? [],
    postPatch ? "", ...
  }: {
    cmakeFlags = cmakeFlags ++ [ "-DCMAKE_INSTALL_LIBDIR=lib" ];

    postPatch = ''
      sed 's#\(CMAKE_ARGS .*$\)#\1 -DCMAKE_INSTALL_LIBDIR=lib#' \
        -i awssdk/CMakeLists.txt
    '' + postPatch;
  });

  cv-bridge = (patchBoostPython rosSuper.cv-bridge).overrideAttrs ({
    patches ? [],
    propagatedBuildInputs ? [], ...
  }: {
    patches = patches ++ [ (self.fetchpatch {
      url = "https://github.com/ros-perception/vision_opencv/commit/f41fc9b761b4e12f5164fb93696c6222ba3232a6.patch";
      sha256 = "10mw2k4a3pypiq194grk5minv61zlqbmcd4s3qvqbrlg2pnl5q9b";
      stripLen = 1;
    }) ];
    propagatedBuildInputs = propagatedBuildInputs ++ [ rosSelf.pythonPackages.opencv3 ];
  });

  gazebo = self.gazebo_9;

  libphidget22 = patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.4.20190605.tar.gz";
    sha256 = "1ab4d7ngvx009vajqv3kxw0s77z0hdd9xb8in1mvx86i1l3vndxa";
  };

  libyaml-vendor = patchVendorUrl rosSuper.libyaml-vendor {
    url = "https://github.com/yaml/libyaml/archive/10c907871f1ccd779c7fccf6b81a62762b5c4e7b.zip";
    sha256 = "0v6ks4hpxmakgymcfvafynla76gl3866grgwf4vjdsb4rsvr13vx";
  };

  nav2-util = rosSuper.nav2-util.overrideAttrs ({
    patches ? [], ...
  }: {
     patches = patches ++ [
      (self.fetchpatch {
        url = "https://github.com/ros-planning/navigation2/commit/b87942a3502af9e4b6ea7d6cf78a510f55539cc1.patch";
        sha256 = "1mqjjywhcg0di7xlhy6jm4apya9m2i9168w4p79ff7fh1f4qn3jg";
        stripLen = 1;
      })
    ];
  });

  rviz-ogre-vendor = patchVendorUrl rosSuper.rviz-ogre-vendor {
    url = "https://github.com/OGRECave/ogre/archive/v1.10.12.zip";
    sha256 = "1nafqazv396y97z0rgrn0dmkddq7y4zgfszvmi3aw6hr6zwyrpa3";
  };
}
