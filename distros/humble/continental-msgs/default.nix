
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-continental-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/continental_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "856d5093e63e59afd72b59641e1f6112344f92278acbb01fc3373fb47d294727";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ autoware-cmake rosidl-default-generators ];

  meta = {
    description = "Messages for Continental sensors";
    license = with lib.licenses; [ asl20 ];
  };
}
