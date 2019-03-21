
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, catkin, rqt-console, dynamic-reconfigure, rospy, rqt-py-common, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-rqt-reconfigure";
  version = "0.4.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_reconfigure-release/archive/release/melodic/rqt_reconfigure/0.4.10-0.tar.gz;
    sha256 = "7dfe332ee9d603a0981832a698c817c14b0fa00c3cc0de4ab7a6676c90d598b4";
  };

  propagatedBuildInputs = [ rqt-gui-py rqt-console dynamic-reconfigure rospy rqt-py-common rqt-gui python-qt-binding ];
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
    #license = lib.licenses.BSD;
  };
}
