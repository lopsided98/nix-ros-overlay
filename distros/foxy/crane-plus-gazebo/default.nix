
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, crane-plus-description, crane-plus-moveit-config, gazebo-ros-pkgs }:
buildRosPackage {
  pname = "ros-foxy-crane-plus-gazebo";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crane_plus-release/archive/release/foxy/crane_plus_gazebo/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "133cbb139c0c36997ad77064355c8775b65600f60f1ad01698a422345413eb68";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ crane-plus-description crane-plus-moveit-config gazebo-ros-pkgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CRANE+ V2 gazebo simulation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
