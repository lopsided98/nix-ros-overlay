
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, std-msgs, ament-lint-common, ament-cmake, rosidl-default-generators, builtin-interfaces }:
buildRosPackage {
  pname = "ros-dashing-delphi-srr-msgs";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/astuff/astuff_sensor_msgs-release/archive/release/dashing/delphi_srr_msgs/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "4cef1816267d980d6b37d07c5f0f24e023e9ea686d78fb2c4daec16200b64a54";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs builtin-interfaces ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime builtin-interfaces std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Message definitions for the Delphi SRR'';
    license = with lib.licenses; [ mit ];
  };
}
