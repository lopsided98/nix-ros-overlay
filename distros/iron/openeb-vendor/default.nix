
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, boost, cmake, curl, ffmpeg, git, glew, glfw3, gtest, hdf5, libusb-compat-0_1, libusb1, opencv, openscenegraph, pkg-config, protobuf, unzip, wget }:
buildRosPackage {
  pname = "ros-iron-openeb-vendor";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/openeb_vendor-release/archive/release/iron/openeb_vendor/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "9c9ed0534e9d8d9a67eb7f3492196177582e551c60baaf92e9e031fa10078025";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package cmake curl git pkg-config unzip wget ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost ffmpeg glew glfw3 hdf5 libusb-compat-0_1 libusb1 opencv opencv.cxxdev openscenegraph protobuf ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package cmake curl git hdf5 pkg-config unzip wget ];

  meta = {
    description = "Wrapper around openeb";
    license = with lib.licenses; [ asl20 ];
  };
}
