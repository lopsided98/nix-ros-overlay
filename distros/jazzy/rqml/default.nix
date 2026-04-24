
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rqml-core, rqml-default-plugins }:
buildRosPackage {
  pname = "ros-jazzy-rqml";
  version = "3.26.41-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqml-release/archive/release/jazzy/rqml/3.26.41-1.tar.gz";
    name = "3.26.41-1.tar.gz";
    sha256 = "3ebf9e0b17ac9966032ed639d524c9608c41bc580400af386c8dd30d032d7964";
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
