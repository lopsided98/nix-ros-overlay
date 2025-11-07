
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-smacc2-msgs";
  version = "2.3.20-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/humble/smacc2_msgs/2.3.20-2.tar.gz";
    name = "2.3.20-2.tar.gz";
    sha256 = "92a77d8d60a597f9450d20820436cd77a70181782b8f21f1ee100c5af442b4b1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages and services used in smacc2.";
    license = with lib.licenses; [ asl20 ];
  };
}
