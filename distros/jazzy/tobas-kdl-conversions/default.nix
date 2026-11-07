
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, tobas-kdl, urdf }:
buildRosPackage {
  pname = "ros-jazzy-tobas-kdl-conversions";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_kdl_conversions/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "304202669cbf7ff22f0374ea8936e46b1a7f7e140cfb15dcdf67cc336700730c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs tobas-kdl urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversions among KDL, Eigen, URDF, and Tobas ROS 2 message types.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
