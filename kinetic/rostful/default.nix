
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-pip, click, flask-cors, flask-reverse-proxy, pyros, pyros-interfaces-ros, pythonPackages, roslint, rospy, rostest, rosunit, tblib, webargs }:
buildRosPackage {
  pname = "ros-kinetic-rostful";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/pyros-dev/rostful-rosrelease/archive/release/kinetic/rostful/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "eb57619be5233c56a02c08509336b9d4eb44e0c4ae4605009c35bec228fcbffe";
  };

  buildType = "catkin";
  buildInputs = [ catkin-pip pythonPackages.catkin-pkg roslint rostest ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ click flask-cors flask-reverse-proxy pyros pyros-interfaces-ros pythonPackages.flask pythonPackages.flask-restful pythonPackages.pyyaml pythonPackages.simplejson pythonPackages.tornado rospy tblib webargs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''REST API for ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
