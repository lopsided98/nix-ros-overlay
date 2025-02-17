
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, diagnostic-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-cob-msgs";
  version = "2.8.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cob_common-release/archive/release/jazzy/cob_msgs/2.8.12-1.tar.gz";
    name = "2.8.12-1.tar.gz";
    sha256 = "f7007c21325b711c291c28a82e4a9f91afab08ca13c46113b796a05739a0dbb2";
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
