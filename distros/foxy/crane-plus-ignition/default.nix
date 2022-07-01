
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, robot-state-publisher, ros-ign }:
buildRosPackage {
  pname = "ros-foxy-crane-plus-ignition";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/rt-net-gbp/crane_plus-release/archive/release/foxy/crane_plus_ignition/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "e42e517d714f6c34fabf011ba942157d83272080e6f480e533abc2fb4cefe47b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ robot-state-publisher ros-ign ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CRANE+V2 ignition gazebo simulation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
