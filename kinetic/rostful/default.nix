
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flask-reverse-proxy, tblib, roslint, pyros, click, webargs, catkin-pip, catkin, pythonPackages, rostest, flask-cors, pyros-interfaces-ros, rospy, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-rostful";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/pyros-dev/rostful-rosrelease/archive/release/kinetic/rostful/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "eb57619be5233c56a02c08509336b9d4eb44e0c4ae4605009c35bec228fcbffe";
  };

  buildType = "catkin";
  buildInputs = [ flask-reverse-proxy tblib roslint pyros click webargs catkin-pip pythonPackages.flask-restful pythonPackages.pyyaml pythonPackages.flask rostest flask-cors pyros-interfaces-ros rospy pythonPackages.catkin-pkg pythonPackages.tornado pythonPackages.simplejson ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ flask-reverse-proxy tblib pyros click webargs pythonPackages.flask-restful pythonPackages.pyyaml flask-cors pyros-interfaces-ros rospy pythonPackages.flask pythonPackages.tornado pythonPackages.simplejson ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''REST API for ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
