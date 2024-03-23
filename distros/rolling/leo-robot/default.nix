
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo, leo-bringup, leo-fw }:
buildRosPackage {
  pname = "ros-rolling-leo-robot";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/rolling/leo_robot/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "bff18bb27931b3cc8dc6921c888a24ac782be8afc2b93bd26353c1f8a143dded";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ leo leo-bringup leo-fw ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage of software to install on Leo Rover.";
    license = with lib.licenses; [ mit ];
  };
}
