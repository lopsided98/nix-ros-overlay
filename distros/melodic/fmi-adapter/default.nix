
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-fmi-adapter";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmi_adapter-release/archive/release/melodic/fmi_adapter/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "0894a446abbe7f62af13d424e545bb3da0bb15e307f2b26ce2b4e30f2f062fe7";
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
