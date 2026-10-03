
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, tobas-linux, tobas-msgs, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-sbus-driver";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_sbus_driver/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "9f6a5a51463d65f09888d8588bb9bab9fa5f645b1a52339f561561e1bf6458dc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost tobas-linux tobas-msgs tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "SBUS protocol driver library and ROS 2 receiver node.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
