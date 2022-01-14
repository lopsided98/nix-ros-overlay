
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, qt5, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-ros-image-to-qimage";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-sports/ros_image_to_qimage-release/archive/release/galactic/ros_image_to_qimage/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "df859dc610b2e7ef43e847b133b72289c7219d6d7d05e1ef0f7f2d3417f4b52c";
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
