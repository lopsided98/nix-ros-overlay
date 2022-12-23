
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, catkin, cmake, doxygen, eigen, eigenpy, git, octomap, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-hpp-fcl";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/humanoid-path-planner/hpp-fcl-ros-release/archive/release/melodic/hpp-fcl/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "6bcc4bea9886c332a57db218d8767e49524a8984bb8623d13bee3184e5ae672b";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git pythonPackages.lxml ];
  propagatedBuildInputs = [ assimp boost catkin eigen eigenpy octomap python pythonPackages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''An extension of the Flexible Collision Library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
