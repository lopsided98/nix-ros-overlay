
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, shape-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, radar-msgs, std-msgs, rosidl-default-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-derived-object-msgs";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/astuff/astuff_sensor_msgs-release/archive/release/dashing/derived_object_msgs/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "712f19c204053eb543648508d1b827f93746346c1be10ed97945ad179ddb0ccb";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces shape-msgs radar-msgs std-msgs geometry-msgs ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces shape-msgs radar-msgs std-msgs rosidl-default-runtime geometry-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Abstracted Messages from Perception Modalities'';
    license = with lib.licenses; [ mit ];
  };
}
