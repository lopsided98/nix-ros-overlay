
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, diagnostic-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-cob-msgs";
  version = "2.7.10-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_common-release/archive/release/humble/cob_msgs/2.7.10-1.tar.gz";
    name = "2.7.10-1.tar.gz";
    sha256 = "64db2279563e07ef0ab3ec8d2f677781db979df4b1832876d1e277d11150d065";
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
