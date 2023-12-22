
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-gazebo }:
buildRosPackage {
  pname = "ros-humble-tiago-simulation";
  version = "4.0.6-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_simulation-release/archive/release/humble/tiago_simulation/4.0.6-1.tar.gz";
    name = "4.0.6-1.tar.gz";
    sha256 = "04e14e16aacb2a0d913da0a3ccc125547b5d8c7ad037957064dc90444ff833c0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tiago-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The tiago_simulation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
