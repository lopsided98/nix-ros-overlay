
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rocon-console, rocon-ebnf, rocon-interactions, rocon-launch, rocon-master-info, rocon-python-comms, rocon-python-redis, rocon-python-utils, rocon-python-wifi, rocon-semantic-version, rocon-uri }:
buildRosPackage {
  pname = "ros-melodic-rocon-tools";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/rocon_tools/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "688fc316688135e08e1fd33312879d6059122f1fd9122c4ded28dd4177b59cce";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rocon-console rocon-ebnf rocon-interactions rocon-launch rocon-master-info rocon-python-comms rocon-python-redis rocon-python-utils rocon-python-wifi rocon-semantic-version rocon-uri ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utilities and tools developed for rocon, but usable beyond the boundaries
    of rocon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
