
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, qt5, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-ros-image-to-qimage";
  version = "0.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_image_to_qimage-release/archive/release/humble/ros_image_to_qimage/0.0.2-3.tar.gz";
    name = "0.0.2-3.tar.gz";
    sha256 = "658c3dd9a7319971d08e2be0b29741c3d799fc62f7a993468ea946dd85061c7f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge qt5.qtbase sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package that converts a ros image msg to a qimage object'';
    license = with lib.licenses; [ asl20 ];
  };
}
