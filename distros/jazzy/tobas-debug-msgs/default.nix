
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, tobas-eigen-msgs, tobas-kdl-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-debug-msgs";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_debug_msgs/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "beff6bfab73907136d800a53b01619dd609df589d0e6ca3039c54b4af4b02661";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime tobas-eigen-msgs tobas-kdl-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Debug messages for controllers, observers, and related components.";
    license = with lib.licenses; [ asl20 ];
  };
}
