{ lib, buildRosPackage, fetchFromGitHub, ament-cmake }:

buildRosPackage {
  pname = "rosidl-runtime-rs";
  version = "unstable-20220429";
  
  src = fetchFromGitHub {
     owner = "ros2-rust";
     repo = "ros2_rust";
     rev = "6d1112520192aec49ee20e41104d7c1a811627d7";
     sha256 = "sha256-gPTYsrkq3u7smbIQSC5Am8hdWq7PMtL5RfeUz8e1pnI=";
  };
  sourceRoot = "source/rosidl_runtime_rs";

  buildType = "ament_cargo";
  #buildInputs = [ ros-environment ];
  #checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common opencv3 ];
  #propagatedBuildInputs = [ builtin-interfaces cv-bridge diagnostic-updater eigen geometry-msgs image-transport launch-ros librealsense2 nav-msgs rclcpp rclcpp-components realsense2-camera-msgs sensor-msgs std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = with lib; {
    description = "Runtime code shared by Rust projects in ROS 2";
    license = licenses.asl20;
  };
}
