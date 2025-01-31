
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-cob-srvs";
  version = "2.8.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cob_common-release/archive/release/rolling/cob_srvs/2.8.12-1.tar.gz";
    name = "2.8.12-1.tar.gz";
    sha256 = "0401da192d1bd5478846a7f928e4065fa493b7d852fa133fae61c8fdd168319f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "This Package contains Care-O-bot specific service definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
