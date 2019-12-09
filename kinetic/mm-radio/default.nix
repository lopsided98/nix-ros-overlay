
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-time, mm-core-msgs, catkin, ecl-utilities, ecl-command-line, ecl-exceptions, nanomsg, ecl-threads, ecl-build, mm-messages }:
buildRosPackage {
  pname = "ros-kinetic-mm-radio";
  version = "0.2.4";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/message_multiplexing-release/archive/release/kinetic/mm_radio/0.2.4-0.tar.gz";
    name = "0.2.4-0.tar.gz";
    sha256 = "2536477d5e835d74d9a0c20296b60c960e0deefbefa33e1d852bbac4524f0f20";
  };

  buildType = "catkin";
  buildInputs = [ ecl-time mm-core-msgs ecl-utilities ecl-command-line ecl-exceptions nanomsg ecl-threads ecl-build mm-messages ];
  propagatedBuildInputs = [ ecl-time mm-core-msgs ecl-utilities ecl-command-line ecl-exceptions nanomsg ecl-threads ecl-build mm-messages ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Multiplexing many packet types across a two-way radio connection with publishers and subscribers.
   Great for embedded connections by two-way serial or ethernet types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
