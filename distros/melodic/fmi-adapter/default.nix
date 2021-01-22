
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-fmi-adapter";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmi_adapter-release/archive/release/melodic/fmi_adapter/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "560f868a23b5d96c3c97ec51af8053484e4ee418d69d650d0f1465d6900683b7";
  };

  buildType = "catkin";
  buildInputs = [ git ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wraps FMUs for co-simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
