
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rocon-semantic-version, rocon-python-comms, rocon-console, rocon-ebnf, rocon-python-wifi, rocon-python-redis, rocon-interactions, rocon-launch, catkin, rocon-python-utils, rocon-master-info, rocon-uri }:
buildRosPackage {
  pname = "ros-melodic-rocon-tools";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/rocon_tools/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "688fc316688135e08e1fd33312879d6059122f1fd9122c4ded28dd4177b59cce";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rocon-semantic-version rocon-console rocon-python-comms rocon-ebnf rocon-python-wifi rocon-python-redis rocon-interactions rocon-launch rocon-python-utils rocon-master-info rocon-uri ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utilities and tools developed for rocon, but usable beyond the boundaries
    of rocon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
