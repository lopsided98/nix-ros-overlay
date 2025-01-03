
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, rosbag-fancy-msgs, rosfmt, rqt-gui, rqt-gui-cpp, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-rqt-rosbag-fancy";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosbag_fancy-release/archive/release/noetic/rqt_rosbag_fancy/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "d2de3ef53df647a60ed01833cd880e83892b96a9a6b115329237d849792e3c75";
  };

  buildType = "catkin";
  buildInputs = [ catkin qt5.qtbase ];
  propagatedBuildInputs = [ rosbag-fancy-msgs rosfmt rqt-gui rqt-gui-cpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "rqt GUI for rosbag_fancy";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
