
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, diagnostic-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-cob-msgs";
  version = "2.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/humble/cob_msgs/2.7.9-1.tar.gz";
    name = "2.7.9-1.tar.gz";
    sha256 = "48f582be55db8b0083101a1ddd19e80376a6ec39bf3594552dfa1695cf613fcd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces diagnostic-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages for representing state information, such as battery information and emergency stop status.'';
    license = with lib.licenses; [ asl20 ];
  };
}
