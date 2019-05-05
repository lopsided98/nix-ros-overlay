
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, rostest, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-fmi-adapter";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/boschresearch/fmi_adapter-release/archive/release/melodic/fmi_adapter/1.0.2-0.tar.gz;
    sha256 = "bfe24f7aa9671c953277071e419fc78de19d4ff33b5342fb7aef9e0b8f964f49";
  };

  buildInputs = [ std-msgs roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wraps FMUs for co-simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
