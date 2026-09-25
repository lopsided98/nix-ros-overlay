
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-tobas-real-msgs";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_real_msgs/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "e5603251615f36c0ea3ad7056749bd412c5ad23eb01a75104eed2512958c3641";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 services for configuring real-hardware sensor and RC input handlers.";
    license = with lib.licenses; [ asl20 ];
  };
}
