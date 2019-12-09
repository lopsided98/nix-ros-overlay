
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-time, geometry-msgs, std-msgs, std-srvs, catkin, roscpp, yocs-cmd-vel-mux, ecl-exceptions, yocs-velocity-smoother, kobuki-msgs, ecl-threads }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-keyop";
  version = "0.7.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_keyop/0.7.6-0.tar.gz";
    name = "0.7.6-0.tar.gz";
    sha256 = "d54e509af6238598e394898f4b980156c3e6bd37de1cee746943ab1d346dc73d";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs ecl-time std-msgs std-srvs ecl-exceptions roscpp kobuki-msgs ecl-threads ];
  propagatedBuildInputs = [ geometry-msgs ecl-time std-msgs std-srvs roscpp yocs-cmd-vel-mux ecl-exceptions yocs-velocity-smoother kobuki-msgs ecl-threads ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Keyboard teleoperation for Kobuki: relays commands from a keyboard to Kobuki.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
