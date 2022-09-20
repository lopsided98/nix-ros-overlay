
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-delphi-mrr-msgs";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/astuff/astuff_sensor_msgs-release/archive/release/foxy/delphi_mrr_msgs/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "b5394667d1ff96e8a0736138e9f59c10c887473bb8c9d769ad8b7d076f4a3bd5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Message definitions for the Delphi MRR'';
    license = with lib.licenses; [ mit ];
  };
}
