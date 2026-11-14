
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-nebula-msgs";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_msgs/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "9038060749945b80becf037a2eb11decd40268f32da14e699e74b21ac9df701e";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ autoware-cmake rosidl-default-generators ];

  meta = {
    description = "Generic sensor raw data messages for Nebula";
    license = with lib.licenses; [ asl20 ];
  };
}
