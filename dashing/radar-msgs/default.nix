
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rosidl-default-runtime, std-msgs, ament-lint-common, ament-cmake, rosidl-default-generators, builtin-interfaces }:
buildRosPackage {
  pname = "ros-dashing-radar-msgs";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/astuff/astuff_sensor_msgs-release/archive/release/dashing/radar_msgs/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "96fe2971bd3d43576f02e33ca8e0be13655249e207b228c255f0a01247f7a0de";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs builtin-interfaces geometry-msgs ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime builtin-interfaces geometry-msgs std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Generic Radar Messages'';
    license = with lib.licenses; [ mit ];
  };
}
