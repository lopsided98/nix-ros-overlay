
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-gazebo }:
buildRosPackage {
  pname = "ros-humble-tiago-simulation";
  version = "4.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_simulation-release/archive/release/humble/tiago_simulation/4.13.0-1.tar.gz";
    name = "4.13.0-1.tar.gz";
    sha256 = "7b777e105272d749e0626dce0d111e7e2ca25da7e46e06f0d8ded6a9052e53bd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tiago-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The tiago_simulation package";
    license = with lib.licenses; [ asl20 ];
  };
}
