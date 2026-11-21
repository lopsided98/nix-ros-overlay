
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, ament-lint-common }:
buildRosPackage {
  pname = "ros-kilted-cras-lint";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cras_ros_utils-release/archive/release/kilted/cras_lint/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "b70edc1a78d6db8c4ffb1347a4b137d49909a1e0fd18e7f7b8ce62b3dfa7015f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = "Various utilities to work with bag files";
    license = with lib.licenses; [ bsd3 ];
  };
}
