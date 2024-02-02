
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mocap4r2-control, mocap4r2-control-msgs, qt-gui-cpp, qt5, rclcpp, rqt-gui, rqt-gui-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-rqt-mocap4r2-control";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4r2-release/archive/release/humble/rqt_mocap4r2_control/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "eed253f468c3932d17981a6c12b0880ce57441c0e9ac172d4e94fdf81609c0e4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ mocap4r2-control mocap4r2-control-msgs qt-gui-cpp qt5.qtbase rclcpp rqt-gui rqt-gui-cpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Control tools GUI'';
    license = with lib.licenses; [ asl20 ];
  };
}
