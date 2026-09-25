
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-debug-msgs, tobas-eigen-msgs-adapter, tobas-kdl-msgs-adapter }:
buildRosPackage {
  pname = "ros-jazzy-tobas-debug-msgs-adapter";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_debug_msgs_adapter/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "b5200a83424a8e2f25e883dff059cdaa2f3efb2db9c0610d330baa130860529e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-debug-msgs tobas-eigen-msgs-adapter tobas-kdl-msgs-adapter ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 type adapters for Tobas controller and observer debug messages.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
