
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-cob-srvs";
  version = "2.8.12-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cob_common-release/archive/release/kilted/cob_srvs/2.8.12-2.tar.gz";
    name = "2.8.12-2.tar.gz";
    sha256 = "f1a7e385e7818a06f11e2daba63df7ffe5437aa0a0f32fc208162ce41d431f02";
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
