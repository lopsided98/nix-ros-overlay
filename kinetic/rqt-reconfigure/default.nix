
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, dynamic-reconfigure, rqt-py-common, pythonPackages, catkin, roslint, rqt-console, rqt-gui-py, rospy, rostest, python-qt-binding }:
buildRosPackage {
  pname = "ros-kinetic-rqt-reconfigure";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_reconfigure-release/archive/release/kinetic/rqt_reconfigure/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "4d4ddccaba198e1867fd7283c27654fda2f7c8c783440c2fe16bf056bd6e5b4f";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ rqt-gui pythonPackages.pyyaml dynamic-reconfigure rqt-py-common rqt-console rqt-gui-py rospy python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This rqt plugin succeeds former dynamic_reconfigure's GUI
    (reconfigure_gui), and provides the way to view and edit the parameters
    that are accessible via dynamic_reconfigure.<br/>
    <br/>
    (12/27/2012) In the future, arbitrary parameters that are not associated
    with any nodes (which are not handled by dynamic_reconfigure) might
    become handled.
    However, currently as the name indicates, this pkg solely is dependent
    on dynamic_reconfigure that allows access to only those params latched
    to nodes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
