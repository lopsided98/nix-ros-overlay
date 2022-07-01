
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, crane-plus-description, crane-plus-moveit-config, gazebo-ros-pkgs }:
buildRosPackage {
  pname = "ros-foxy-crane-plus-gazebo";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/rt-net-gbp/crane_plus-release/archive/release/foxy/crane_plus_gazebo/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "98f37c57f24200ccd4ae3d01e9ec57c1b30a4507fa78f2fc6a0e2757ec744916";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ crane-plus-description crane-plus-moveit-config gazebo-ros-pkgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CRANE+V2 gazebo simulation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
