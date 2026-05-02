
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rqml-core, rqml-default-plugins }:
buildRosPackage {
  pname = "ros-kilted-rqml";
  version = "3.26.42-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqml-release/archive/release/kilted/rqml/3.26.42-1.tar.gz";
    name = "3.26.42-1.tar.gz";
    sha256 = "07865191bb5e1669f5043a9bf1de99abbc19081789e529c6c0e6928313256dbe";
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
