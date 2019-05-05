
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-runtime, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-p2os-teleop";
  version = "2.1.0";

  src = fetchurl {
    url = https://github.com/allenh1/p2os-release/archive/release/lunar/p2os_teleop/2.1.0-0.tar.gz;
    sha256 = "0077632fd8b4d488f1e8fee14d69eda0c6eda2f6e57abe93ffb758d447ede8c9";
  };

  buildInputs = [ std-msgs sensor-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs message-runtime std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A teleoperation node for the p2os_driver package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
