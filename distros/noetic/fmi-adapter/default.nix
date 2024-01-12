
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-fmi-adapter";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmi_adapter-release/archive/release/noetic/fmi_adapter/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "9f1742c1df329d7633f85b260e8be629c56f99e70736039077c6f0103abc73bc";
  };

  buildType = "catkin";
  buildInputs = [ catkin git ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wraps FMUs for co-simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
