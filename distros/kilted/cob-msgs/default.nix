
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, diagnostic-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-cob-msgs";
  version = "2.8.12-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cob_common-release/archive/release/kilted/cob_msgs/2.8.12-2.tar.gz";
    name = "2.8.12-2.tar.gz";
    sha256 = "104d3bc98f3925669108676914c485c3e7a6b6f19eecf676aafd73ce34964bad";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces diagnostic-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages for representing state information, such as battery information and emergency stop status.";
    license = with lib.licenses; [ asl20 ];
  };
}
