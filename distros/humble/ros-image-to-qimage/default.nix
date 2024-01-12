
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, qt5, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-ros-image-to-qimage";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_image_to_qimage-release/archive/release/humble/ros_image_to_qimage/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "871e132e8af334e312f8594c0b7484f7e239baf7f404b671206e03b44102a245";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge qt5.qtbase sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package that converts a ros image msg to a qimage object'';
    license = with lib.licenses; [ asl20 ];
  };
}
