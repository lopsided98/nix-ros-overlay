
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-smacc2-msgs";
  version = "0.3.0-r3";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/galactic/smacc2_msgs/0.3.0-3.tar.gz";
    name = "0.3.0-3.tar.gz";
    sha256 = "280fb1c6480b859476b1bb03bd4e78a3765d3e2eaf33fdb3eb053180eec6d6d5";
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
