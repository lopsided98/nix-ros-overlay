
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, euslisp }:
buildRosPackage {
  pname = "ros-melodic-jskeus";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jskeus-release/archive/release/melodic/jskeus/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "7029b7cebfd39f6ff41fe8988b972ec265072336cad162905116689fea92e59a";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ euslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp software developed and used by JSK at The University of Tokyo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
