
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-msgs-adapter, tobas-path-tools, tobas-real-common, tobas-ros2-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rqt-bridge";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rqt_bridge/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "dceb98b2f817acee694eb4c4440afcbbc2896c88f741f2f71ba11c2581638cea";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-constants tobas-msgs-adapter tobas-path-tools tobas-real-common tobas-ros2-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Qt signal bridge for delivering Tobas ROS 2 messages to GUI applications.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
