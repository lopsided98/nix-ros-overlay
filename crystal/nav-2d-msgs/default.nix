
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, launch, std-msgs, rosidl-default-runtime, launch-testing, ament-lint-common, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, rosidl-default-generators, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-nav-2d-msgs";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav_2d_msgs/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "d93199b6841e254723ea3512ddaefd8d134808f0baee70950a2755f483982d8f";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs rosidl-default-generators geometry-msgs ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-default-runtime rosidl-default-generators geometry-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Basic message types for two dimensional navigation, extending from geometry_msgs::Pose2D.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
