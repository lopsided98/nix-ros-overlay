
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-pilz-testutils";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/pilz_testutils/0.4.8-0.tar.gz;
    sha256 = "26063a93963c54ee16ff5ec4ada6ff6cdf655085fb74f61da728e6ae92c6c59b";
  };

  buildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains testing utilities used by Pilz packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
