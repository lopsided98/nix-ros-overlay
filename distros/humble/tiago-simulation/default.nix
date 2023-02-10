
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-gazebo }:
buildRosPackage {
  pname = "ros-humble-tiago-simulation";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_simulation-release/archive/release/humble/tiago_simulation/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "87af41770a47fb140e87a8efaf4b011c94bfeca6cc5d6885d4fc54805ff621e4";
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
