
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rqml-core, rqml-default-plugins }:
buildRosPackage {
  pname = "ros-kilted-rqml";
  version = "3.26.41-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqml-release/archive/release/kilted/rqml/3.26.41-1.tar.gz";
    name = "3.26.41-1.tar.gz";
    sha256 = "ffac9f6290ccaff94c41727e9c38b77cc73b123be6288d2b4105dffc7dbba7c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rqml-core rqml-default-plugins ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "QML-based robotics visualization and control tool for ROS 2.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
