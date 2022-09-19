
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-smacc2-msgs";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/SMACC2-release/archive/release/humble/smacc2_msgs/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "1fd514408f13d7816cd6362a3dac350c494b5858e919d9fce7d02d4e0718a11c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages and services used in smacc2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
