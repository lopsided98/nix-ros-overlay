
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-homer-ptu-msgs";
  version = "0.1.7-r2";

  src = fetchurl {
    url = https://gitlab.uni-koblenz.de/robbie/homer_ptu_msgs-release/repository/archive.tar.gz?ref=release/kinetic/homer_ptu_msgs/0.1.7-2;
    sha256 = "38139dbce8bcc522358ee39dd3d4be7e65e79654dcea7b8ae584e260b474fb96";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ptu_msgs package'';
    #license = lib.licenses.TODO;
  };
}
