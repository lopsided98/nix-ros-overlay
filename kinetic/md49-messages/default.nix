
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-md49-messages";
  version = "0.1.4-r1";

  src = fetchurl {
    url = https://github.com/Scheik/md49_base_controller-release/archive/release/kinetic/md49_messages/0.1.4-1.tar.gz;
    sha256 = "49e61cb56b9a3f9cd322d8692107ba9a7f6cfa0182fb7d1923b52cb271092219";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The md49_messages package'';
    #license = lib.licenses.BSD;
  };
}
