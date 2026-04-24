
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rqml-core, rqml-default-plugins }:
buildRosPackage {
  pname = "ros-rolling-rqml";
  version = "3.26.42-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqml-release/archive/release/rolling/rqml/3.26.42-1.tar.gz";
    name = "3.26.42-1.tar.gz";
    sha256 = "457ecd95d3e1c914458365972490788c06f8307af1eccb1c075a06cabbd392c9";
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
