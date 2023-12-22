
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

self: super: {

 acado-vendor = self.callPackage ./acado-vendor {};

 ackermann-msgs = self.callPackage ./ackermann-msgs {};

 ackermann-steering-controller = self.callPackage ./ackermann-steering-controller {};

 action-msgs = self.callPackage ./action-msgs {};

 action-tutorials-cpp = self.callPackage ./action-tutorials-cpp {};

 action-tutorials-interfaces = self.callPackage ./action-tutorials-interfaces {};

 action-tutorials-py = self.callPackage ./action-tutorials-py {};

 actionlib-msgs = self.callPackage ./actionlib-msgs {};

 actuator-msgs = self.callPackage ./actuator-msgs {};

 adaptive-component = self.callPackage ./adaptive-component {};

 admittance-controller = self.callPackage ./admittance-controller {};

 ament-acceleration = self.callPackage ./ament-acceleration {};

 ament-black = self.callPackage ./ament-black {};

 ament-clang-format = self.callPackage ./ament-clang-format {};

 ament-clang-tidy = self.callPackage ./ament-clang-tidy {};

 ament-cmake = self.callPackage ./ament-cmake {};

 ament-cmake-auto = self.callPackage ./ament-cmake-auto {};

 ament-cmake-black = self.callPackage ./ament-cmake-black {};

 ament-cmake-catch2 = self.callPackage ./ament-cmake-catch2 {};

 ament-cmake-clang-format = self.callPackage ./ament-cmake-clang-format {};

 ament-cmake-clang-tidy = self.callPackage ./ament-cmake-clang-tidy {};

 ament-cmake-copyright = self.callPackage ./ament-cmake-copyright {};

 ament-cmake-core = self.callPackage ./ament-cmake-core {};

 ament-cmake-cppcheck = self.callPackage ./ament-cmake-cppcheck {};

 ament-cmake-cpplint = self.callPackage ./ament-cmake-cpplint {};

 ament-cmake-export-definitions = self.callPackage ./ament-cmake-export-definitions {};

 ament-cmake-export-dependencies = self.callPackage ./ament-cmake-export-dependencies {};

 ament-cmake-export-include-directories = self.callPackage ./ament-cmake-export-include-directories {};

 ament-cmake-export-interfaces = self.callPackage ./ament-cmake-export-interfaces {};

 ament-cmake-export-libraries = self.callPackage ./ament-cmake-export-libraries {};

 ament-cmake-export-link-flags = self.callPackage ./ament-cmake-export-link-flags {};

 ament-cmake-export-targets = self.callPackage ./ament-cmake-export-targets {};

 ament-cmake-flake8 = self.callPackage ./ament-cmake-flake8 {};

 ament-cmake-gen-version-h = self.callPackage ./ament-cmake-gen-version-h {};

 ament-cmake-gmock = self.callPackage ./ament-cmake-gmock {};

 ament-cmake-google-benchmark = self.callPackage ./ament-cmake-google-benchmark {};

 ament-cmake-gtest = self.callPackage ./ament-cmake-gtest {};

 ament-cmake-include-directories = self.callPackage ./ament-cmake-include-directories {};

 ament-cmake-libraries = self.callPackage ./ament-cmake-libraries {};

 ament-cmake-lint-cmake = self.callPackage ./ament-cmake-lint-cmake {};

 ament-cmake-mypy = self.callPackage ./ament-cmake-mypy {};

 ament-cmake-pclint = self.callPackage ./ament-cmake-pclint {};

 ament-cmake-pep257 = self.callPackage ./ament-cmake-pep257 {};

 ament-cmake-pycodestyle = self.callPackage ./ament-cmake-pycodestyle {};

 ament-cmake-pyflakes = self.callPackage ./ament-cmake-pyflakes {};

 ament-cmake-pytest = self.callPackage ./ament-cmake-pytest {};

 ament-cmake-python = self.callPackage ./ament-cmake-python {};

 ament-cmake-ros = self.callPackage ./ament-cmake-ros {};

 ament-cmake-target-dependencies = self.callPackage ./ament-cmake-target-dependencies {};

 ament-cmake-test = self.callPackage ./ament-cmake-test {};

 ament-cmake-uncrustify = self.callPackage ./ament-cmake-uncrustify {};

 ament-cmake-vendor-package = self.callPackage ./ament-cmake-vendor-package {};

 ament-cmake-version = self.callPackage ./ament-cmake-version {};

 ament-cmake-xmllint = self.callPackage ./ament-cmake-xmllint {};

 ament-copyright = self.callPackage ./ament-copyright {};

 ament-cppcheck = self.callPackage ./ament-cppcheck {};

 ament-cpplint = self.callPackage ./ament-cpplint {};

 ament-download = self.callPackage ./ament-download {};

 ament-flake8 = self.callPackage ./ament-flake8 {};

 ament-index-cpp = self.callPackage ./ament-index-cpp {};

 ament-index-python = self.callPackage ./ament-index-python {};

 ament-lint = self.callPackage ./ament-lint {};

 ament-lint-auto = self.callPackage ./ament-lint-auto {};

 ament-lint-cmake = self.callPackage ./ament-lint-cmake {};

 ament-lint-common = self.callPackage ./ament-lint-common {};

 ament-mypy = self.callPackage ./ament-mypy {};

 ament-nodl = self.callPackage ./ament-nodl {};

 ament-package = self.callPackage ./ament-package {};

 ament-pclint = self.callPackage ./ament-pclint {};

 ament-pep257 = self.callPackage ./ament-pep257 {};

 ament-pycodestyle = self.callPackage ./ament-pycodestyle {};

 ament-pyflakes = self.callPackage ./ament-pyflakes {};

 ament-uncrustify = self.callPackage ./ament-uncrustify {};

 ament-vitis = self.callPackage ./ament-vitis {};

 ament-xmllint = self.callPackage ./ament-xmllint {};

 angles = self.callPackage ./angles {};

 apex-test-tools = self.callPackage ./apex-test-tools {};

 apriltag = self.callPackage ./apriltag {};

 apriltag-msgs = self.callPackage ./apriltag-msgs {};

 apriltag-ros = self.callPackage ./apriltag-ros {};

 aruco-opencv = self.callPackage ./aruco-opencv {};

 aruco-opencv-msgs = self.callPackage ./aruco-opencv-msgs {};

 asio-cmake-module = self.callPackage ./asio-cmake-module {};

 async-web-server-cpp = self.callPackage ./async-web-server-cpp {};

 automotive-autonomy-msgs = self.callPackage ./automotive-autonomy-msgs {};

 automotive-navigation-msgs = self.callPackage ./automotive-navigation-msgs {};

 automotive-platform-msgs = self.callPackage ./automotive-platform-msgs {};

 autoware-auto-msgs = self.callPackage ./autoware-auto-msgs {};

 avt-vimba-camera = self.callPackage ./avt-vimba-camera {};

 aws-robomaker-small-warehouse-world = self.callPackage ./aws-robomaker-small-warehouse-world {};

 aws-sdk-cpp-vendor = self.callPackage ./aws-sdk-cpp-vendor {};

 backward-ros = self.callPackage ./backward-ros {};

 bag2-to-image = self.callPackage ./bag2-to-image {};

 behaviortree-cpp = self.callPackage ./behaviortree-cpp {};

 behaviortree-cpp-v3 = self.callPackage ./behaviortree-cpp-v3 {};

 bicycle-steering-controller = self.callPackage ./bicycle-steering-controller {};

 bno055 = self.callPackage ./bno055 {};

 bond = self.callPackage ./bond {};

 bond-core = self.callPackage ./bond-core {};

 bondcpp = self.callPackage ./bondcpp {};

 boost-geometry-util = self.callPackage ./boost-geometry-util {};

 bosch-locator-bridge = self.callPackage ./bosch-locator-bridge {};

 builtin-interfaces = self.callPackage ./builtin-interfaces {};

 camera-calibration = self.callPackage ./camera-calibration {};

 camera-calibration-parsers = self.callPackage ./camera-calibration-parsers {};

 camera-info-manager = self.callPackage ./camera-info-manager {};

 can-msgs = self.callPackage ./can-msgs {};

 cartographer = self.callPackage ./cartographer {};

 cartographer-ros = self.callPackage ./cartographer-ros {};

 cartographer-ros-msgs = self.callPackage ./cartographer-ros-msgs {};

 cartographer-rviz = self.callPackage ./cartographer-rviz {};

 cascade-lifecycle-msgs = self.callPackage ./cascade-lifecycle-msgs {};

 catch-ros2 = self.callPackage ./catch-ros2 {};

 chomp-motion-planner = self.callPackage ./chomp-motion-planner {};

 class-loader = self.callPackage ./class-loader {};

 classic-bags = self.callPackage ./classic-bags {};

 color-names = self.callPackage ./color-names {};

 color-util = self.callPackage ./color-util {};

 common-interfaces = self.callPackage ./common-interfaces {};

 composition = self.callPackage ./composition {};

 composition-interfaces = self.callPackage ./composition-interfaces {};

 compressed-depth-image-transport = self.callPackage ./compressed-depth-image-transport {};

 compressed-image-transport = self.callPackage ./compressed-image-transport {};

 console-bridge-vendor = self.callPackage ./console-bridge-vendor {};

 control-box-rst = self.callPackage ./control-box-rst {};

 control-msgs = self.callPackage ./control-msgs {};

 control-toolbox = self.callPackage ./control-toolbox {};

 controller-interface = self.callPackage ./controller-interface {};

 controller-manager = self.callPackage ./controller-manager {};

 controller-manager-msgs = self.callPackage ./controller-manager-msgs {};

 costmap-queue = self.callPackage ./costmap-queue {};

 cudnn-cmake-module = self.callPackage ./cudnn-cmake-module {};

 cv-bridge = self.callPackage ./cv-bridge {};

 cyclonedds = self.callPackage ./cyclonedds {};

 demo-nodes-cpp = self.callPackage ./demo-nodes-cpp {};

 demo-nodes-cpp-native = self.callPackage ./demo-nodes-cpp-native {};

 demo-nodes-py = self.callPackage ./demo-nodes-py {};

 depth-image-proc = self.callPackage ./depth-image-proc {};

 depthai = self.callPackage ./depthai {};

 depthai-ros = self.callPackage ./depthai-ros {};

 depthai-bridge = self.callPackage ./depthai-bridge {};

 depthai-descriptions = self.callPackage ./depthai-descriptions {};

 depthai-examples = self.callPackage ./depthai-examples {};

 depthai-filters = self.callPackage ./depthai-filters {};

 depthai-ros-driver = self.callPackage ./depthai-ros-driver {};

 depthai-ros-msgs = self.callPackage ./depthai-ros-msgs {};

 depthimage-to-laserscan = self.callPackage ./depthimage-to-laserscan {};

 desktop = self.callPackage ./desktop {};

 desktop-full = self.callPackage ./desktop-full {};

 diagnostic-aggregator = self.callPackage ./diagnostic-aggregator {};

 diagnostic-common-diagnostics = self.callPackage ./diagnostic-common-diagnostics {};

 diagnostic-msgs = self.callPackage ./diagnostic-msgs {};

 diagnostic-updater = self.callPackage ./diagnostic-updater {};

 diagnostics = self.callPackage ./diagnostics {};

 diff-drive-controller = self.callPackage ./diff-drive-controller {};

 dolly = self.callPackage ./dolly {};

 dolly-follow = self.callPackage ./dolly-follow {};

 dolly-gazebo = self.callPackage ./dolly-gazebo {};

 dolly-ignition = self.callPackage ./dolly-ignition {};

 domain-bridge = self.callPackage ./domain-bridge {};

 domain-coordinator = self.callPackage ./domain-coordinator {};

 dual-arm-panda-moveit-config = self.callPackage ./dual-arm-panda-moveit-config {};

 dummy-map-server = self.callPackage ./dummy-map-server {};

 dummy-robot-bringup = self.callPackage ./dummy-robot-bringup {};

 dummy-sensors = self.callPackage ./dummy-sensors {};

 dwb-core = self.callPackage ./dwb-core {};

 dwb-critics = self.callPackage ./dwb-critics {};

 dwb-msgs = self.callPackage ./dwb-msgs {};

 dwb-plugins = self.callPackage ./dwb-plugins {};

 dynamic-edt-3d = self.callPackage ./dynamic-edt-3d {};

 dynamixel-hardware = self.callPackage ./dynamixel-hardware {};

 dynamixel-sdk = self.callPackage ./dynamixel-sdk {};

 dynamixel-sdk-custom-interfaces = self.callPackage ./dynamixel-sdk-custom-interfaces {};

 dynamixel-sdk-examples = self.callPackage ./dynamixel-sdk-examples {};

 dynamixel-workbench = self.callPackage ./dynamixel-workbench {};

 dynamixel-workbench-msgs = self.callPackage ./dynamixel-workbench-msgs {};

 dynamixel-workbench-toolbox = self.callPackage ./dynamixel-workbench-toolbox {};

 ecal = self.callPackage ./ecal {};

 ecl-build = self.callPackage ./ecl-build {};

 ecl-command-line = self.callPackage ./ecl-command-line {};

 ecl-concepts = self.callPackage ./ecl-concepts {};

 ecl-config = self.callPackage ./ecl-config {};

 ecl-console = self.callPackage ./ecl-console {};

 ecl-containers = self.callPackage ./ecl-containers {};

 ecl-converters = self.callPackage ./ecl-converters {};

 ecl-converters-lite = self.callPackage ./ecl-converters-lite {};

 ecl-core = self.callPackage ./ecl-core {};

 ecl-core-apps = self.callPackage ./ecl-core-apps {};

 ecl-devices = self.callPackage ./ecl-devices {};

 ecl-eigen = self.callPackage ./ecl-eigen {};

 ecl-errors = self.callPackage ./ecl-errors {};

 ecl-exceptions = self.callPackage ./ecl-exceptions {};

 ecl-filesystem = self.callPackage ./ecl-filesystem {};

 ecl-formatters = self.callPackage ./ecl-formatters {};

 ecl-geometry = self.callPackage ./ecl-geometry {};

 ecl-io = self.callPackage ./ecl-io {};

 ecl-ipc = self.callPackage ./ecl-ipc {};

 ecl-license = self.callPackage ./ecl-license {};

 ecl-linear-algebra = self.callPackage ./ecl-linear-algebra {};

 ecl-lite = self.callPackage ./ecl-lite {};

 ecl-manipulators = self.callPackage ./ecl-manipulators {};

 ecl-math = self.callPackage ./ecl-math {};

 ecl-mobile-robot = self.callPackage ./ecl-mobile-robot {};

 ecl-mpl = self.callPackage ./ecl-mpl {};

 ecl-sigslots = self.callPackage ./ecl-sigslots {};

 ecl-sigslots-lite = self.callPackage ./ecl-sigslots-lite {};

 ecl-statistics = self.callPackage ./ecl-statistics {};

 ecl-streams = self.callPackage ./ecl-streams {};

 ecl-threads = self.callPackage ./ecl-threads {};

 ecl-time = self.callPackage ./ecl-time {};

 ecl-time-lite = self.callPackage ./ecl-time-lite {};

 ecl-tools = self.callPackage ./ecl-tools {};

 ecl-type-traits = self.callPackage ./ecl-type-traits {};

 ecl-utilities = self.callPackage ./ecl-utilities {};

 effort-controllers = self.callPackage ./effort-controllers {};

 eigen3-cmake-module = self.callPackage ./eigen3-cmake-module {};

 eigen-stl-containers = self.callPackage ./eigen-stl-containers {};

 eigenpy = self.callPackage ./eigenpy {};

 etsi-its-cam-coding = self.callPackage ./etsi-its-cam-coding {};

 etsi-its-cam-conversion = self.callPackage ./etsi-its-cam-conversion {};

 etsi-its-cam-msgs = self.callPackage ./etsi-its-cam-msgs {};

 etsi-its-coding = self.callPackage ./etsi-its-coding {};

 etsi-its-conversion = self.callPackage ./etsi-its-conversion {};

 etsi-its-denm-coding = self.callPackage ./etsi-its-denm-coding {};

 etsi-its-denm-conversion = self.callPackage ./etsi-its-denm-conversion {};

 etsi-its-denm-msgs = self.callPackage ./etsi-its-denm-msgs {};

 etsi-its-messages = self.callPackage ./etsi-its-messages {};

 etsi-its-msgs = self.callPackage ./etsi-its-msgs {};

 etsi-its-primitives-conversion = self.callPackage ./etsi-its-primitives-conversion {};

 etsi-its-rviz-plugins = self.callPackage ./etsi-its-rviz-plugins {};

 event-camera-codecs = self.callPackage ./event-camera-codecs {};

 event-camera-msgs = self.callPackage ./event-camera-msgs {};

 event-camera-renderer = self.callPackage ./event-camera-renderer {};

 example-interfaces = self.callPackage ./example-interfaces {};

 examples-rclcpp-async-client = self.callPackage ./examples-rclcpp-async-client {};

 examples-rclcpp-cbg-executor = self.callPackage ./examples-rclcpp-cbg-executor {};

 examples-rclcpp-minimal-action-client = self.callPackage ./examples-rclcpp-minimal-action-client {};

 examples-rclcpp-minimal-action-server = self.callPackage ./examples-rclcpp-minimal-action-server {};

 examples-rclcpp-minimal-client = self.callPackage ./examples-rclcpp-minimal-client {};

 examples-rclcpp-minimal-composition = self.callPackage ./examples-rclcpp-minimal-composition {};

 examples-rclcpp-minimal-publisher = self.callPackage ./examples-rclcpp-minimal-publisher {};

 examples-rclcpp-minimal-service = self.callPackage ./examples-rclcpp-minimal-service {};

 examples-rclcpp-minimal-subscriber = self.callPackage ./examples-rclcpp-minimal-subscriber {};

 examples-rclcpp-minimal-timer = self.callPackage ./examples-rclcpp-minimal-timer {};

 examples-rclcpp-multithreaded-executor = self.callPackage ./examples-rclcpp-multithreaded-executor {};

 examples-rclcpp-wait-set = self.callPackage ./examples-rclcpp-wait-set {};

 examples-rclpy-executors = self.callPackage ./examples-rclpy-executors {};

 examples-rclpy-guard-conditions = self.callPackage ./examples-rclpy-guard-conditions {};

 examples-rclpy-minimal-action-client = self.callPackage ./examples-rclpy-minimal-action-client {};

 examples-rclpy-minimal-action-server = self.callPackage ./examples-rclpy-minimal-action-server {};

 examples-rclpy-minimal-client = self.callPackage ./examples-rclpy-minimal-client {};

 examples-rclpy-minimal-publisher = self.callPackage ./examples-rclpy-minimal-publisher {};

 examples-rclpy-minimal-service = self.callPackage ./examples-rclpy-minimal-service {};

 examples-rclpy-minimal-subscriber = self.callPackage ./examples-rclpy-minimal-subscriber {};

 examples-rclpy-pointcloud-publisher = self.callPackage ./examples-rclpy-pointcloud-publisher {};

 examples-tf2-py = self.callPackage ./examples-tf2-py {};

 executive-smach = self.callPackage ./executive-smach {};

 fastcdr = self.callPackage ./fastcdr {};

 fastrtps = self.callPackage ./fastrtps {};

 fastrtps-cmake-module = self.callPackage ./fastrtps-cmake-module {};

 fields2cover = self.callPackage ./fields2cover {};

 filters = self.callPackage ./filters {};

 find-object-2d = self.callPackage ./find-object-2d {};

 flexbe-behavior-engine = self.callPackage ./flexbe-behavior-engine {};

 flexbe-core = self.callPackage ./flexbe-core {};

 flexbe-input = self.callPackage ./flexbe-input {};

 flexbe-mirror = self.callPackage ./flexbe-mirror {};

 flexbe-msgs = self.callPackage ./flexbe-msgs {};

 flexbe-onboard = self.callPackage ./flexbe-onboard {};

 flexbe-states = self.callPackage ./flexbe-states {};

 flexbe-testing = self.callPackage ./flexbe-testing {};

 flexbe-widget = self.callPackage ./flexbe-widget {};

 flir-camera-description = self.callPackage ./flir-camera-description {};

 flir-camera-msgs = self.callPackage ./flir-camera-msgs {};

 fluent-rviz = self.callPackage ./fluent-rviz {};

 fmi-adapter = self.callPackage ./fmi-adapter {};

 fmi-adapter-examples = self.callPackage ./fmi-adapter-examples {};

 fmilibrary-vendor = self.callPackage ./fmilibrary-vendor {};

 foonathan-memory-vendor = self.callPackage ./foonathan-memory-vendor {};

 force-torque-sensor-broadcaster = self.callPackage ./force-torque-sensor-broadcaster {};

 forward-command-controller = self.callPackage ./forward-command-controller {};

 four-wheel-steering-msgs = self.callPackage ./four-wheel-steering-msgs {};

 foxglove-bridge = self.callPackage ./foxglove-bridge {};

 foxglove-msgs = self.callPackage ./foxglove-msgs {};

 fuse = self.callPackage ./fuse {};

 fuse-constraints = self.callPackage ./fuse-constraints {};

 fuse-core = self.callPackage ./fuse-core {};

 fuse-doc = self.callPackage ./fuse-doc {};

 fuse-graphs = self.callPackage ./fuse-graphs {};

 fuse-loss = self.callPackage ./fuse-loss {};

 fuse-models = self.callPackage ./fuse-models {};

 fuse-msgs = self.callPackage ./fuse-msgs {};

 fuse-optimizers = self.callPackage ./fuse-optimizers {};

 fuse-publishers = self.callPackage ./fuse-publishers {};

 fuse-tutorials = self.callPackage ./fuse-tutorials {};

 fuse-variables = self.callPackage ./fuse-variables {};

 fuse-viz = self.callPackage ./fuse-viz {};

 gazebo-dev = self.callPackage ./gazebo-dev {};

 gazebo-msgs = self.callPackage ./gazebo-msgs {};

 gazebo-plugins = self.callPackage ./gazebo-plugins {};

 gazebo-ros = self.callPackage ./gazebo-ros {};

 gazebo-ros2-control = self.callPackage ./gazebo-ros2-control {};

 gazebo-ros2-control-demos = self.callPackage ./gazebo-ros2-control-demos {};

 gazebo-ros-pkgs = self.callPackage ./gazebo-ros-pkgs {};

 gazebo-video-monitor-interfaces = self.callPackage ./gazebo-video-monitor-interfaces {};

 gazebo-video-monitor-plugins = self.callPackage ./gazebo-video-monitor-plugins {};

 gazebo-video-monitor-utils = self.callPackage ./gazebo-video-monitor-utils {};

 gazebo-video-monitors = self.callPackage ./gazebo-video-monitors {};

 gc-spl-2022 = self.callPackage ./gc-spl-2022 {};

 generate-parameter-library = self.callPackage ./generate-parameter-library {};

 generate-parameter-library-example = self.callPackage ./generate-parameter-library-example {};

 generate-parameter-library-py = self.callPackage ./generate-parameter-library-py {};

 generate-parameter-module-example = self.callPackage ./generate-parameter-module-example {};

 geodesy = self.callPackage ./geodesy {};

 geographic-info = self.callPackage ./geographic-info {};

 geographic-msgs = self.callPackage ./geographic-msgs {};

 geometric-shapes = self.callPackage ./geometric-shapes {};

 geometry2 = self.callPackage ./geometry2 {};

 geometry-msgs = self.callPackage ./geometry-msgs {};

 geometry-tutorials = self.callPackage ./geometry-tutorials {};

 gmock-vendor = self.callPackage ./gmock-vendor {};

 google-benchmark-vendor = self.callPackage ./google-benchmark-vendor {};

 gps-msgs = self.callPackage ./gps-msgs {};

 gps-tools = self.callPackage ./gps-tools {};

 gps-umd = self.callPackage ./gps-umd {};

 gpsd-client = self.callPackage ./gpsd-client {};

 graph-msgs = self.callPackage ./graph-msgs {};

 grasping-msgs = self.callPackage ./grasping-msgs {};

 grbl-msgs = self.callPackage ./grbl-msgs {};

 grbl-ros = self.callPackage ./grbl-ros {};

 grid-map = self.callPackage ./grid-map {};

 grid-map-cmake-helpers = self.callPackage ./grid-map-cmake-helpers {};

 grid-map-core = self.callPackage ./grid-map-core {};

 grid-map-costmap-2d = self.callPackage ./grid-map-costmap-2d {};

 grid-map-cv = self.callPackage ./grid-map-cv {};

 grid-map-demos = self.callPackage ./grid-map-demos {};

 grid-map-filters = self.callPackage ./grid-map-filters {};

 grid-map-loader = self.callPackage ./grid-map-loader {};

 grid-map-msgs = self.callPackage ./grid-map-msgs {};

 grid-map-octomap = self.callPackage ./grid-map-octomap {};

 grid-map-pcl = self.callPackage ./grid-map-pcl {};

 grid-map-ros = self.callPackage ./grid-map-ros {};

 grid-map-rviz-plugin = self.callPackage ./grid-map-rviz-plugin {};

 grid-map-sdf = self.callPackage ./grid-map-sdf {};

 grid-map-visualization = self.callPackage ./grid-map-visualization {};

 gripper-controllers = self.callPackage ./gripper-controllers {};

 gscam = self.callPackage ./gscam {};

 gtest-vendor = self.callPackage ./gtest-vendor {};

 gtsam = self.callPackage ./gtsam {};

 gz-ros2-control-demos = self.callPackage ./gz-ros2-control-demos {};

 hardware-interface = self.callPackage ./hardware-interface {};

 hash-library-vendor = self.callPackage ./hash-library-vendor {};

 heaphook = self.callPackage ./heaphook {};

 hls-lfcd-lds-driver = self.callPackage ./hls-lfcd-lds-driver {};

 hpp-fcl = self.callPackage ./hpp-fcl {};

 iceoryx-binding-c = self.callPackage ./iceoryx-binding-c {};

 iceoryx-hoofs = self.callPackage ./iceoryx-hoofs {};

 iceoryx-introspection = self.callPackage ./iceoryx-introspection {};

 iceoryx-posh = self.callPackage ./iceoryx-posh {};

 ifm3d-core = self.callPackage ./ifm3d-core {};

 ignition-cmake2-vendor = self.callPackage ./ignition-cmake2-vendor {};

 ignition-math6-vendor = self.callPackage ./ignition-math6-vendor {};

 image-common = self.callPackage ./image-common {};

 image-geometry = self.callPackage ./image-geometry {};

 image-pipeline = self.callPackage ./image-pipeline {};

 image-proc = self.callPackage ./image-proc {};

 image-publisher = self.callPackage ./image-publisher {};

 image-rotate = self.callPackage ./image-rotate {};

 image-tools = self.callPackage ./image-tools {};

 image-transport = self.callPackage ./image-transport {};

 image-transport-plugins = self.callPackage ./image-transport-plugins {};

 image-view = self.callPackage ./image-view {};

 imu-complementary-filter = self.callPackage ./imu-complementary-filter {};

 imu-filter-madgwick = self.callPackage ./imu-filter-madgwick {};

 imu-sensor-broadcaster = self.callPackage ./imu-sensor-broadcaster {};

 imu-tools = self.callPackage ./imu-tools {};

 interactive-marker-twist-server = self.callPackage ./interactive-marker-twist-server {};

 interactive-markers = self.callPackage ./interactive-markers {};

 intra-process-demo = self.callPackage ./intra-process-demo {};

 io-context = self.callPackage ./io-context {};

 irobot-create-msgs = self.callPackage ./irobot-create-msgs {};

 joint-limits = self.callPackage ./joint-limits {};

 joint-state-broadcaster = self.callPackage ./joint-state-broadcaster {};

 joint-state-publisher = self.callPackage ./joint-state-publisher {};

 joint-state-publisher-gui = self.callPackage ./joint-state-publisher-gui {};

 joint-trajectory-controller = self.callPackage ./joint-trajectory-controller {};

 joy = self.callPackage ./joy {};

 joy-linux = self.callPackage ./joy-linux {};

 joy-teleop = self.callPackage ./joy-teleop {};

 joy-tester = self.callPackage ./joy-tester {};

 kdl-parser = self.callPackage ./kdl-parser {};

 key-teleop = self.callPackage ./key-teleop {};

 keyboard-handler = self.callPackage ./keyboard-handler {};

 kinematics-interface = self.callPackage ./kinematics-interface {};

 kinematics-interface-kdl = self.callPackage ./kinematics-interface-kdl {};

 kinova-gen3-6dof-robotiq-2f-85-moveit-config = self.callPackage ./kinova-gen3-6dof-robotiq-2f-85-moveit-config {};

 kinova-gen3-7dof-robotiq-2f-85-moveit-config = self.callPackage ./kinova-gen3-7dof-robotiq-2f-85-moveit-config {};

 kobuki-core = self.callPackage ./kobuki-core {};

 kobuki-ros-interfaces = self.callPackage ./kobuki-ros-interfaces {};

 kobuki-velocity-smoother = self.callPackage ./kobuki-velocity-smoother {};

 kortex-api = self.callPackage ./kortex-api {};

 kortex-bringup = self.callPackage ./kortex-bringup {};

 kortex-description = self.callPackage ./kortex-description {};

 kortex-driver = self.callPackage ./kortex-driver {};

 lanelet2 = self.callPackage ./lanelet2 {};

 lanelet2-core = self.callPackage ./lanelet2-core {};

 lanelet2-examples = self.callPackage ./lanelet2-examples {};

 lanelet2-io = self.callPackage ./lanelet2-io {};

 lanelet2-maps = self.callPackage ./lanelet2-maps {};

 lanelet2-projection = self.callPackage ./lanelet2-projection {};

 lanelet2-python = self.callPackage ./lanelet2-python {};

 lanelet2-routing = self.callPackage ./lanelet2-routing {};

 lanelet2-traffic-rules = self.callPackage ./lanelet2-traffic-rules {};

 lanelet2-validation = self.callPackage ./lanelet2-validation {};

 laser-filters = self.callPackage ./laser-filters {};

 laser-geometry = self.callPackage ./laser-geometry {};

 laser-proc = self.callPackage ./laser-proc {};

 launch = self.callPackage ./launch {};

 launch-param-builder = self.callPackage ./launch-param-builder {};

 launch-pytest = self.callPackage ./launch-pytest {};

 launch-ros = self.callPackage ./launch-ros {};

 launch-system-modes = self.callPackage ./launch-system-modes {};

 launch-testing = self.callPackage ./launch-testing {};

 launch-testing-ament-cmake = self.callPackage ./launch-testing-ament-cmake {};

 launch-testing-examples = self.callPackage ./launch-testing-examples {};

 launch-testing-ros = self.callPackage ./launch-testing-ros {};

 launch-xml = self.callPackage ./launch-xml {};

 launch-yaml = self.callPackage ./launch-yaml {};

 leo = self.callPackage ./leo {};

 leo-bringup = self.callPackage ./leo-bringup {};

 leo-description = self.callPackage ./leo-description {};

 leo-desktop = self.callPackage ./leo-desktop {};

 leo-fw = self.callPackage ./leo-fw {};

 leo-msgs = self.callPackage ./leo-msgs {};

 leo-robot = self.callPackage ./leo-robot {};

 leo-teleop = self.callPackage ./leo-teleop {};

 leo-viz = self.callPackage ./leo-viz {};

 lgsvl-msgs = self.callPackage ./lgsvl-msgs {};

 libcreate = self.callPackage ./libcreate {};

 libcurl-vendor = self.callPackage ./libcurl-vendor {};

 libg2o = self.callPackage ./libg2o {};

 libmavconn = self.callPackage ./libmavconn {};

 libnabo = self.callPackage ./libnabo {};

 libphidget22 = self.callPackage ./libphidget22 {};

 libpointmatcher = self.callPackage ./libpointmatcher {};

 librealsense2 = self.callPackage ./librealsense2 {};

 libstatistics-collector = self.callPackage ./libstatistics-collector {};

 libyaml-vendor = self.callPackage ./libyaml-vendor {};

 lifecycle = self.callPackage ./lifecycle {};

 lifecycle-msgs = self.callPackage ./lifecycle-msgs {};

 lifecycle-py = self.callPackage ./lifecycle-py {};

 logging-demo = self.callPackage ./logging-demo {};

 magic-enum = self.callPackage ./magic-enum {};

 map-msgs = self.callPackage ./map-msgs {};

 mapviz = self.callPackage ./mapviz {};

 mapviz-interfaces = self.callPackage ./mapviz-interfaces {};

 mapviz-plugins = self.callPackage ./mapviz-plugins {};

 marti-can-msgs = self.callPackage ./marti-can-msgs {};

 marti-common-msgs = self.callPackage ./marti-common-msgs {};

 marti-dbw-msgs = self.callPackage ./marti-dbw-msgs {};

 marti-introspection-msgs = self.callPackage ./marti-introspection-msgs {};

 marti-nav-msgs = self.callPackage ./marti-nav-msgs {};

 marti-perception-msgs = self.callPackage ./marti-perception-msgs {};

 marti-sensor-msgs = self.callPackage ./marti-sensor-msgs {};

 marti-status-msgs = self.callPackage ./marti-status-msgs {};

 marti-visualization-msgs = self.callPackage ./marti-visualization-msgs {};

 mavlink = self.callPackage ./mavlink {};

 mavros = self.callPackage ./mavros {};

 mavros-extras = self.callPackage ./mavros-extras {};

 mavros-msgs = self.callPackage ./mavros-msgs {};

 mcap-vendor = self.callPackage ./mcap-vendor {};

 menge-vendor = self.callPackage ./menge-vendor {};

 message-filters = self.callPackage ./message-filters {};

 message-tf-frame-transformer = self.callPackage ./message-tf-frame-transformer {};

 metavision-driver = self.callPackage ./metavision-driver {};

 micro-ros-diagnostic-bridge = self.callPackage ./micro-ros-diagnostic-bridge {};

 micro-ros-diagnostic-msgs = self.callPackage ./micro-ros-diagnostic-msgs {};

 micro-ros-msgs = self.callPackage ./micro-ros-msgs {};

 microstrain-inertial-driver = self.callPackage ./microstrain-inertial-driver {};

 microstrain-inertial-examples = self.callPackage ./microstrain-inertial-examples {};

 microstrain-inertial-msgs = self.callPackage ./microstrain-inertial-msgs {};

 microstrain-inertial-rqt = self.callPackage ./microstrain-inertial-rqt {};

 mimick-vendor = self.callPackage ./mimick-vendor {};

 mouse-teleop = self.callPackage ./mouse-teleop {};

 moveit = self.callPackage ./moveit {};

 moveit-chomp-optimizer-adapter = self.callPackage ./moveit-chomp-optimizer-adapter {};

 moveit-common = self.callPackage ./moveit-common {};

 moveit-configs-utils = self.callPackage ./moveit-configs-utils {};

 moveit-core = self.callPackage ./moveit-core {};

 moveit-hybrid-planning = self.callPackage ./moveit-hybrid-planning {};

 moveit-kinematics = self.callPackage ./moveit-kinematics {};

 moveit-msgs = self.callPackage ./moveit-msgs {};

 moveit-planners = self.callPackage ./moveit-planners {};

 moveit-planners-chomp = self.callPackage ./moveit-planners-chomp {};

 moveit-planners-ompl = self.callPackage ./moveit-planners-ompl {};

 moveit-planners-stomp = self.callPackage ./moveit-planners-stomp {};

 moveit-plugins = self.callPackage ./moveit-plugins {};

 moveit-py = self.callPackage ./moveit-py {};

 moveit-resources = self.callPackage ./moveit-resources {};

 moveit-resources-fanuc-description = self.callPackage ./moveit-resources-fanuc-description {};

 moveit-resources-fanuc-moveit-config = self.callPackage ./moveit-resources-fanuc-moveit-config {};

 moveit-resources-panda-description = self.callPackage ./moveit-resources-panda-description {};

 moveit-resources-panda-moveit-config = self.callPackage ./moveit-resources-panda-moveit-config {};

 moveit-resources-pr2-description = self.callPackage ./moveit-resources-pr2-description {};

 moveit-resources-prbt-ikfast-manipulator-plugin = self.callPackage ./moveit-resources-prbt-ikfast-manipulator-plugin {};

 moveit-resources-prbt-moveit-config = self.callPackage ./moveit-resources-prbt-moveit-config {};

 moveit-resources-prbt-pg70-support = self.callPackage ./moveit-resources-prbt-pg70-support {};

 moveit-resources-prbt-support = self.callPackage ./moveit-resources-prbt-support {};

 moveit-ros = self.callPackage ./moveit-ros {};

 moveit-ros-benchmarks = self.callPackage ./moveit-ros-benchmarks {};

 moveit-ros-control-interface = self.callPackage ./moveit-ros-control-interface {};

 moveit-ros-move-group = self.callPackage ./moveit-ros-move-group {};

 moveit-ros-occupancy-map-monitor = self.callPackage ./moveit-ros-occupancy-map-monitor {};

 moveit-ros-perception = self.callPackage ./moveit-ros-perception {};

 moveit-ros-planning = self.callPackage ./moveit-ros-planning {};

 moveit-ros-planning-interface = self.callPackage ./moveit-ros-planning-interface {};

 moveit-ros-robot-interaction = self.callPackage ./moveit-ros-robot-interaction {};

 moveit-ros-visualization = self.callPackage ./moveit-ros-visualization {};

 moveit-ros-warehouse = self.callPackage ./moveit-ros-warehouse {};

 moveit-runtime = self.callPackage ./moveit-runtime {};

 moveit-servo = self.callPackage ./moveit-servo {};

 moveit-setup-app-plugins = self.callPackage ./moveit-setup-app-plugins {};

 moveit-setup-assistant = self.callPackage ./moveit-setup-assistant {};

 moveit-setup-controllers = self.callPackage ./moveit-setup-controllers {};

 moveit-setup-core-plugins = self.callPackage ./moveit-setup-core-plugins {};

 moveit-setup-framework = self.callPackage ./moveit-setup-framework {};

 moveit-setup-srdf-plugins = self.callPackage ./moveit-setup-srdf-plugins {};

 moveit-simple-controller-manager = self.callPackage ./moveit-simple-controller-manager {};

 moveit-visual-tools = self.callPackage ./moveit-visual-tools {};

 mqtt-client = self.callPackage ./mqtt-client {};

 mqtt-client-interfaces = self.callPackage ./mqtt-client-interfaces {};

 mrpt2 = self.callPackage ./mrpt2 {};

 mrpt-msgs = self.callPackage ./mrpt-msgs {};

 mrpt-path-planning = self.callPackage ./mrpt-path-planning {};

 mrt-cmake-modules = self.callPackage ./mrt-cmake-modules {};

 multires-image = self.callPackage ./multires-image {};

 mvsim = self.callPackage ./mvsim {};

 nao-button-sim = self.callPackage ./nao-button-sim {};

 nao-command-msgs = self.callPackage ./nao-command-msgs {};

 nao-lola = self.callPackage ./nao-lola {};

 nao-meshes = self.callPackage ./nao-meshes {};

 nao-sensor-msgs = self.callPackage ./nao-sensor-msgs {};

 naoqi-bridge-msgs = self.callPackage ./naoqi-bridge-msgs {};

 naoqi-driver = self.callPackage ./naoqi-driver {};

 naoqi-libqi = self.callPackage ./naoqi-libqi {};

 naoqi-libqicore = self.callPackage ./naoqi-libqicore {};

 nav2-amcl = self.callPackage ./nav2-amcl {};

 nav2-behavior-tree = self.callPackage ./nav2-behavior-tree {};

 nav2-behaviors = self.callPackage ./nav2-behaviors {};

 nav2-bringup = self.callPackage ./nav2-bringup {};

 nav2-bt-navigator = self.callPackage ./nav2-bt-navigator {};

 nav2-collision-monitor = self.callPackage ./nav2-collision-monitor {};

 nav2-common = self.callPackage ./nav2-common {};

 nav2-constrained-smoother = self.callPackage ./nav2-constrained-smoother {};

 nav2-controller = self.callPackage ./nav2-controller {};

 nav2-core = self.callPackage ./nav2-core {};

 nav2-costmap-2d = self.callPackage ./nav2-costmap-2d {};

 nav2-dwb-controller = self.callPackage ./nav2-dwb-controller {};

 nav2-lifecycle-manager = self.callPackage ./nav2-lifecycle-manager {};

 nav2-map-server = self.callPackage ./nav2-map-server {};

 nav2-mppi-controller = self.callPackage ./nav2-mppi-controller {};

 nav2-msgs = self.callPackage ./nav2-msgs {};

 nav2-navfn-planner = self.callPackage ./nav2-navfn-planner {};

 nav2-planner = self.callPackage ./nav2-planner {};

 nav2-regulated-pure-pursuit-controller = self.callPackage ./nav2-regulated-pure-pursuit-controller {};

 nav2-rotation-shim-controller = self.callPackage ./nav2-rotation-shim-controller {};

 nav2-rviz-plugins = self.callPackage ./nav2-rviz-plugins {};

 nav2-simple-commander = self.callPackage ./nav2-simple-commander {};

 nav2-smac-planner = self.callPackage ./nav2-smac-planner {};

 nav2-smoother = self.callPackage ./nav2-smoother {};

 nav2-system-tests = self.callPackage ./nav2-system-tests {};

 nav2-theta-star-planner = self.callPackage ./nav2-theta-star-planner {};

 nav2-util = self.callPackage ./nav2-util {};

 nav2-velocity-smoother = self.callPackage ./nav2-velocity-smoother {};

 nav2-voxel-grid = self.callPackage ./nav2-voxel-grid {};

 nav2-waypoint-follower = self.callPackage ./nav2-waypoint-follower {};

 nav-2d-msgs = self.callPackage ./nav-2d-msgs {};

 nav-2d-utils = self.callPackage ./nav-2d-utils {};

 nav-msgs = self.callPackage ./nav-msgs {};

 navigation2 = self.callPackage ./navigation2 {};

 neo-simulation2 = self.callPackage ./neo-simulation2 {};

 nlohmann-json-schema-validator-vendor = self.callPackage ./nlohmann-json-schema-validator-vendor {};

 nmea-hardware-interface = self.callPackage ./nmea-hardware-interface {};

 nmea-msgs = self.callPackage ./nmea-msgs {};

 nmea-navsat-driver = self.callPackage ./nmea-navsat-driver {};

 nodl-python = self.callPackage ./nodl-python {};

 nodl-to-policy = self.callPackage ./nodl-to-policy {};

 nonpersistent-voxel-layer = self.callPackage ./nonpersistent-voxel-layer {};

 novatel-gps-driver = self.callPackage ./novatel-gps-driver {};

 novatel-gps-msgs = self.callPackage ./novatel-gps-msgs {};

 ntpd-driver = self.callPackage ./ntpd-driver {};

 ntrip-client = self.callPackage ./ntrip-client {};

 ntrip-client-node = self.callPackage ./ntrip-client-node {};

 object-recognition-msgs = self.callPackage ./object-recognition-msgs {};

 octomap = self.callPackage ./octomap {};

 octomap-mapping = self.callPackage ./octomap-mapping {};

 octomap-msgs = self.callPackage ./octomap-msgs {};

 octomap-ros = self.callPackage ./octomap-ros {};

 octomap-rviz-plugins = self.callPackage ./octomap-rviz-plugins {};

 octomap-server = self.callPackage ./octomap-server {};

 octovis = self.callPackage ./octovis {};

 odom-to-tf-ros2 = self.callPackage ./odom-to-tf-ros2 {};

 ompl = self.callPackage ./ompl {};

 openni2-camera = self.callPackage ./openni2-camera {};

 orocos-kdl-vendor = self.callPackage ./orocos-kdl-vendor {};

 osqp-vendor = self.callPackage ./osqp-vendor {};

 osrf-pycommon = self.callPackage ./osrf-pycommon {};

 osrf-testing-tools-cpp = self.callPackage ./osrf-testing-tools-cpp {};

 ouster-msgs = self.callPackage ./ouster-msgs {};

 ouster-ros = self.callPackage ./ouster-ros {};

 ouxt-common = self.callPackage ./ouxt-common {};

 ouxt-lint-common = self.callPackage ./ouxt-lint-common {};

 parameter-traits = self.callPackage ./parameter-traits {};

 pcl-conversions = self.callPackage ./pcl-conversions {};

 pcl-msgs = self.callPackage ./pcl-msgs {};

 pcl-ros = self.callPackage ./pcl-ros {};

 pendulum-control = self.callPackage ./pendulum-control {};

 pendulum-msgs = self.callPackage ./pendulum-msgs {};

 pepper-meshes = self.callPackage ./pepper-meshes {};

 perception = self.callPackage ./perception {};

 perception-pcl = self.callPackage ./perception-pcl {};

 performance-test = self.callPackage ./performance-test {};

 performance-test-fixture = self.callPackage ./performance-test-fixture {};

 phidgets-accelerometer = self.callPackage ./phidgets-accelerometer {};

 phidgets-analog-inputs = self.callPackage ./phidgets-analog-inputs {};

 phidgets-analog-outputs = self.callPackage ./phidgets-analog-outputs {};

 phidgets-api = self.callPackage ./phidgets-api {};

 phidgets-digital-inputs = self.callPackage ./phidgets-digital-inputs {};

 phidgets-digital-outputs = self.callPackage ./phidgets-digital-outputs {};

 phidgets-drivers = self.callPackage ./phidgets-drivers {};

 phidgets-gyroscope = self.callPackage ./phidgets-gyroscope {};

 phidgets-high-speed-encoder = self.callPackage ./phidgets-high-speed-encoder {};

 phidgets-ik = self.callPackage ./phidgets-ik {};

 phidgets-magnetometer = self.callPackage ./phidgets-magnetometer {};

 phidgets-motors = self.callPackage ./phidgets-motors {};

 phidgets-msgs = self.callPackage ./phidgets-msgs {};

 phidgets-spatial = self.callPackage ./phidgets-spatial {};

 phidgets-temperature = self.callPackage ./phidgets-temperature {};

 pick-ik = self.callPackage ./pick-ik {};

 picknik-ament-copyright = self.callPackage ./picknik-ament-copyright {};

 picknik-reset-fault-controller = self.callPackage ./picknik-reset-fault-controller {};

 picknik-twist-controller = self.callPackage ./picknik-twist-controller {};

 pilz-industrial-motion-planner = self.callPackage ./pilz-industrial-motion-planner {};

 pilz-industrial-motion-planner-testutils = self.callPackage ./pilz-industrial-motion-planner-testutils {};

 pinocchio = self.callPackage ./pinocchio {};

 plansys2-bringup = self.callPackage ./plansys2-bringup {};

 plansys2-bt-actions = self.callPackage ./plansys2-bt-actions {};

 plansys2-core = self.callPackage ./plansys2-core {};

 plansys2-domain-expert = self.callPackage ./plansys2-domain-expert {};

 plansys2-executor = self.callPackage ./plansys2-executor {};

 plansys2-lifecycle-manager = self.callPackage ./plansys2-lifecycle-manager {};

 plansys2-msgs = self.callPackage ./plansys2-msgs {};

 plansys2-pddl-parser = self.callPackage ./plansys2-pddl-parser {};

 plansys2-planner = self.callPackage ./plansys2-planner {};

 plansys2-popf-plan-solver = self.callPackage ./plansys2-popf-plan-solver {};

 plansys2-problem-expert = self.callPackage ./plansys2-problem-expert {};

 plansys2-terminal = self.callPackage ./plansys2-terminal {};

 plansys2-tests = self.callPackage ./plansys2-tests {};

 plansys2-tools = self.callPackage ./plansys2-tools {};

 plotjuggler = self.callPackage ./plotjuggler {};

 plotjuggler-msgs = self.callPackage ./plotjuggler-msgs {};

 plotjuggler-ros = self.callPackage ./plotjuggler-ros {};

 pluginlib = self.callPackage ./pluginlib {};

 point-cloud-interfaces = self.callPackage ./point-cloud-interfaces {};

 point-cloud-msg-wrapper = self.callPackage ./point-cloud-msg-wrapper {};

 point-cloud-transport = self.callPackage ./point-cloud-transport {};

 point-cloud-transport-plugins = self.callPackage ./point-cloud-transport-plugins {};

 point-cloud-transport-py = self.callPackage ./point-cloud-transport-py {};

 pointcloud-to-laserscan = self.callPackage ./pointcloud-to-laserscan {};

 polygon-demos = self.callPackage ./polygon-demos {};

 polygon-msgs = self.callPackage ./polygon-msgs {};

 polygon-rviz-plugins = self.callPackage ./polygon-rviz-plugins {};

 polygon-utils = self.callPackage ./polygon-utils {};

 popf = self.callPackage ./popf {};

 pose-cov-ops = self.callPackage ./pose-cov-ops {};

 position-controllers = self.callPackage ./position-controllers {};

 proxsuite = self.callPackage ./proxsuite {};

 py-trees = self.callPackage ./py-trees {};

 py-trees-js = self.callPackage ./py-trees-js {};

 py-trees-ros = self.callPackage ./py-trees-ros {};

 py-trees-ros-interfaces = self.callPackage ./py-trees-ros-interfaces {};

 pybind11-json-vendor = self.callPackage ./pybind11-json-vendor {};

 pybind11-vendor = self.callPackage ./pybind11-vendor {};

 python-cmake-module = self.callPackage ./python-cmake-module {};

 python-orocos-kdl-vendor = self.callPackage ./python-orocos-kdl-vendor {};

 python-qt-binding = self.callPackage ./python-qt-binding {};

 qpoases-vendor = self.callPackage ./qpoases-vendor {};

 qt-dotgraph = self.callPackage ./qt-dotgraph {};

 qt-gui = self.callPackage ./qt-gui {};

 qt-gui-app = self.callPackage ./qt-gui-app {};

 qt-gui-core = self.callPackage ./qt-gui-core {};

 qt-gui-cpp = self.callPackage ./qt-gui-cpp {};

 qt-gui-py-common = self.callPackage ./qt-gui-py-common {};

 quality-of-service-demo-cpp = self.callPackage ./quality-of-service-demo-cpp {};

 quality-of-service-demo-py = self.callPackage ./quality-of-service-demo-py {};

 quaternion-operation = self.callPackage ./quaternion-operation {};

 r2r-spl-7 = self.callPackage ./r2r-spl-7 {};

 radar-msgs = self.callPackage ./radar-msgs {};

 random-numbers = self.callPackage ./random-numbers {};

 range-sensor-broadcaster = self.callPackage ./range-sensor-broadcaster {};

 rc-common-msgs = self.callPackage ./rc-common-msgs {};

 rc-dynamics-api = self.callPackage ./rc-dynamics-api {};

 rc-genicam-api = self.callPackage ./rc-genicam-api {};

 rc-genicam-driver = self.callPackage ./rc-genicam-driver {};

 rc-reason-clients = self.callPackage ./rc-reason-clients {};

 rc-reason-msgs = self.callPackage ./rc-reason-msgs {};

 rcdiscover = self.callPackage ./rcdiscover {};

 rcgcd-spl-14 = self.callPackage ./rcgcd-spl-14 {};

 rcgcd-spl-14-conversion = self.callPackage ./rcgcd-spl-14-conversion {};

 rcgcrd-spl-4 = self.callPackage ./rcgcrd-spl-4 {};

 rcgcrd-spl-4-conversion = self.callPackage ./rcgcrd-spl-4-conversion {};

 rcl = self.callPackage ./rcl {};

 rcl-action = self.callPackage ./rcl-action {};

 rcl-interfaces = self.callPackage ./rcl-interfaces {};

 rcl-lifecycle = self.callPackage ./rcl-lifecycle {};

 rcl-logging-interface = self.callPackage ./rcl-logging-interface {};

 rcl-logging-noop = self.callPackage ./rcl-logging-noop {};

 rcl-logging-spdlog = self.callPackage ./rcl-logging-spdlog {};

 rcl-yaml-param-parser = self.callPackage ./rcl-yaml-param-parser {};

 rclc = self.callPackage ./rclc {};

 rclc-examples = self.callPackage ./rclc-examples {};

 rclc-lifecycle = self.callPackage ./rclc-lifecycle {};

 rclc-parameter = self.callPackage ./rclc-parameter {};

 rclcpp = self.callPackage ./rclcpp {};

 rclcpp-action = self.callPackage ./rclcpp-action {};

 rclcpp-cascade-lifecycle = self.callPackage ./rclcpp-cascade-lifecycle {};

 rclcpp-components = self.callPackage ./rclcpp-components {};

 rclcpp-lifecycle = self.callPackage ./rclcpp-lifecycle {};

 rclpy = self.callPackage ./rclpy {};

 rclpy-message-converter = self.callPackage ./rclpy-message-converter {};

 rclpy-message-converter-msgs = self.callPackage ./rclpy-message-converter-msgs {};

 rcpputils = self.callPackage ./rcpputils {};

 rcss3d-agent = self.callPackage ./rcss3d-agent {};

 rcss3d-agent-basic = self.callPackage ./rcss3d-agent-basic {};

 rcss3d-agent-msgs = self.callPackage ./rcss3d-agent-msgs {};

 rcss3d-agent-msgs-to-soccer-interfaces = self.callPackage ./rcss3d-agent-msgs-to-soccer-interfaces {};

 rcss3d-nao = self.callPackage ./rcss3d-nao {};

 rcutils = self.callPackage ./rcutils {};

 realsense2-camera = self.callPackage ./realsense2-camera {};

 realsense2-camera-msgs = self.callPackage ./realsense2-camera-msgs {};

 realsense2-description = self.callPackage ./realsense2-description {};

 realtime-tools = self.callPackage ./realtime-tools {};

 resource-retriever = self.callPackage ./resource-retriever {};

 rig-reconfigure = self.callPackage ./rig-reconfigure {};

 rmf-api-msgs = self.callPackage ./rmf-api-msgs {};

 rmf-battery = self.callPackage ./rmf-battery {};

 rmf-building-map-msgs = self.callPackage ./rmf-building-map-msgs {};

 rmf-building-sim-common = self.callPackage ./rmf-building-sim-common {};

 rmf-building-sim-gz-classic-plugins = self.callPackage ./rmf-building-sim-gz-classic-plugins {};

 rmf-charger-msgs = self.callPackage ./rmf-charger-msgs {};

 rmf-charging-schedule = self.callPackage ./rmf-charging-schedule {};

 rmf-cmake-uncrustify = self.callPackage ./rmf-cmake-uncrustify {};

 rmf-dev = self.callPackage ./rmf-dev {};

 rmf-dispenser-msgs = self.callPackage ./rmf-dispenser-msgs {};

 rmf-door-msgs = self.callPackage ./rmf-door-msgs {};

 rmf-fleet-adapter = self.callPackage ./rmf-fleet-adapter {};

 rmf-fleet-adapter-python = self.callPackage ./rmf-fleet-adapter-python {};

 rmf-fleet-msgs = self.callPackage ./rmf-fleet-msgs {};

 rmf-ingestor-msgs = self.callPackage ./rmf-ingestor-msgs {};

 rmf-lift-msgs = self.callPackage ./rmf-lift-msgs {};

 rmf-obstacle-msgs = self.callPackage ./rmf-obstacle-msgs {};

 rmf-robot-sim-common = self.callPackage ./rmf-robot-sim-common {};

 rmf-robot-sim-gz-classic-plugins = self.callPackage ./rmf-robot-sim-gz-classic-plugins {};

 rmf-scheduler-msgs = self.callPackage ./rmf-scheduler-msgs {};

 rmf-site-map-msgs = self.callPackage ./rmf-site-map-msgs {};

 rmf-task = self.callPackage ./rmf-task {};

 rmf-task-msgs = self.callPackage ./rmf-task-msgs {};

 rmf-task-ros2 = self.callPackage ./rmf-task-ros2 {};

 rmf-task-sequence = self.callPackage ./rmf-task-sequence {};

 rmf-traffic = self.callPackage ./rmf-traffic {};

 rmf-traffic-editor = self.callPackage ./rmf-traffic-editor {};

 rmf-traffic-editor-assets = self.callPackage ./rmf-traffic-editor-assets {};

 rmf-traffic-editor-test-maps = self.callPackage ./rmf-traffic-editor-test-maps {};

 rmf-traffic-examples = self.callPackage ./rmf-traffic-examples {};

 rmf-traffic-msgs = self.callPackage ./rmf-traffic-msgs {};

 rmf-traffic-ros2 = self.callPackage ./rmf-traffic-ros2 {};

 rmf-utils = self.callPackage ./rmf-utils {};

 rmf-visualization = self.callPackage ./rmf-visualization {};

 rmf-visualization-building-systems = self.callPackage ./rmf-visualization-building-systems {};

 rmf-visualization-fleet-states = self.callPackage ./rmf-visualization-fleet-states {};

 rmf-visualization-floorplans = self.callPackage ./rmf-visualization-floorplans {};

 rmf-visualization-msgs = self.callPackage ./rmf-visualization-msgs {};

 rmf-visualization-navgraphs = self.callPackage ./rmf-visualization-navgraphs {};

 rmf-visualization-obstacles = self.callPackage ./rmf-visualization-obstacles {};

 rmf-visualization-rviz2-plugins = self.callPackage ./rmf-visualization-rviz2-plugins {};

 rmf-visualization-schedule = self.callPackage ./rmf-visualization-schedule {};

 rmf-websocket = self.callPackage ./rmf-websocket {};

 rmf-workcell-msgs = self.callPackage ./rmf-workcell-msgs {};

 rmw = self.callPackage ./rmw {};

 rmw-connextdds = self.callPackage ./rmw-connextdds {};

 rmw-connextdds-common = self.callPackage ./rmw-connextdds-common {};

 rmw-cyclonedds-cpp = self.callPackage ./rmw-cyclonedds-cpp {};

 rmw-dds-common = self.callPackage ./rmw-dds-common {};

 rmw-fastrtps-cpp = self.callPackage ./rmw-fastrtps-cpp {};

 rmw-fastrtps-dynamic-cpp = self.callPackage ./rmw-fastrtps-dynamic-cpp {};

 rmw-fastrtps-shared-cpp = self.callPackage ./rmw-fastrtps-shared-cpp {};

 rmw-implementation = self.callPackage ./rmw-implementation {};

 rmw-implementation-cmake = self.callPackage ./rmw-implementation-cmake {};

 robot-calibration = self.callPackage ./robot-calibration {};

 robot-calibration-msgs = self.callPackage ./robot-calibration-msgs {};

 robot-localization = self.callPackage ./robot-localization {};

 robot-state-publisher = self.callPackage ./robot-state-publisher {};

 robotiq-controllers = self.callPackage ./robotiq-controllers {};

 robotiq-description = self.callPackage ./robotiq-description {};

 robotraconteur = self.callPackage ./robotraconteur {};

 ros2-control = self.callPackage ./ros2-control {};

 ros2-control-test-assets = self.callPackage ./ros2-control-test-assets {};

 ros2-controllers = self.callPackage ./ros2-controllers {};

 ros2-controllers-test-nodes = self.callPackage ./ros2-controllers-test-nodes {};

 ros2-socketcan = self.callPackage ./ros2-socketcan {};

 ros2-socketcan-msgs = self.callPackage ./ros2-socketcan-msgs {};

 ros2acceleration = self.callPackage ./ros2acceleration {};

 ros2action = self.callPackage ./ros2action {};

 ros2bag = self.callPackage ./ros2bag {};

 ros2cli = self.callPackage ./ros2cli {};

 ros2cli-common-extensions = self.callPackage ./ros2cli-common-extensions {};

 ros2cli-test-interfaces = self.callPackage ./ros2cli-test-interfaces {};

 ros2component = self.callPackage ./ros2component {};

 ros2controlcli = self.callPackage ./ros2controlcli {};

 ros2doctor = self.callPackage ./ros2doctor {};

 ros2interface = self.callPackage ./ros2interface {};

 ros2launch = self.callPackage ./ros2launch {};

 ros2launch-security = self.callPackage ./ros2launch-security {};

 ros2launch-security-examples = self.callPackage ./ros2launch-security-examples {};

 ros2lifecycle = self.callPackage ./ros2lifecycle {};

 ros2lifecycle-test-fixtures = self.callPackage ./ros2lifecycle-test-fixtures {};

 ros2multicast = self.callPackage ./ros2multicast {};

 ros2node = self.callPackage ./ros2node {};

 ros2nodl = self.callPackage ./ros2nodl {};

 ros2param = self.callPackage ./ros2param {};

 ros2pkg = self.callPackage ./ros2pkg {};

 ros2run = self.callPackage ./ros2run {};

 ros2service = self.callPackage ./ros2service {};

 ros2test = self.callPackage ./ros2test {};

 ros2topic = self.callPackage ./ros2topic {};

 ros2trace = self.callPackage ./ros2trace {};

 ros2trace-analysis = self.callPackage ./ros2trace-analysis {};

 ros-base = self.callPackage ./ros-base {};

 ros-core = self.callPackage ./ros-core {};

 ros-environment = self.callPackage ./ros-environment {};

 ros-gz = self.callPackage ./ros-gz {};

 ros-gz-interfaces = self.callPackage ./ros-gz-interfaces {};

 ros-ign = self.callPackage ./ros-ign {};

 ros-ign-bridge = self.callPackage ./ros-ign-bridge {};

 ros-ign-gazebo = self.callPackage ./ros-ign-gazebo {};

 ros-ign-gazebo-demos = self.callPackage ./ros-ign-gazebo-demos {};

 ros-ign-image = self.callPackage ./ros-ign-image {};

 ros-ign-interfaces = self.callPackage ./ros-ign-interfaces {};

 ros-image-to-qimage = self.callPackage ./ros-image-to-qimage {};

 ros-industrial-cmake-boilerplate = self.callPackage ./ros-industrial-cmake-boilerplate {};

 ros-testing = self.callPackage ./ros-testing {};

 ros-workspace = self.callPackage ./ros-workspace {};

 rosapi = self.callPackage ./rosapi {};

 rosapi-msgs = self.callPackage ./rosapi-msgs {};

 rosbag2 = self.callPackage ./rosbag2 {};

 rosbag2-compression = self.callPackage ./rosbag2-compression {};

 rosbag2-compression-zstd = self.callPackage ./rosbag2-compression-zstd {};

 rosbag2-cpp = self.callPackage ./rosbag2-cpp {};

 rosbag2-examples-cpp = self.callPackage ./rosbag2-examples-cpp {};

 rosbag2-examples-py = self.callPackage ./rosbag2-examples-py {};

 rosbag2-interfaces = self.callPackage ./rosbag2-interfaces {};

 rosbag2-performance-benchmarking = self.callPackage ./rosbag2-performance-benchmarking {};

 rosbag2-performance-benchmarking-msgs = self.callPackage ./rosbag2-performance-benchmarking-msgs {};

 rosbag2-py = self.callPackage ./rosbag2-py {};

 rosbag2-storage = self.callPackage ./rosbag2-storage {};

 rosbag2-storage-default-plugins = self.callPackage ./rosbag2-storage-default-plugins {};

 rosbag2-storage-mcap = self.callPackage ./rosbag2-storage-mcap {};

 rosbag2-storage-sqlite3 = self.callPackage ./rosbag2-storage-sqlite3 {};

 rosbag2-test-common = self.callPackage ./rosbag2-test-common {};

 rosbag2-test-msgdefs = self.callPackage ./rosbag2-test-msgdefs {};

 rosbag2-tests = self.callPackage ./rosbag2-tests {};

 rosbag2-transport = self.callPackage ./rosbag2-transport {};

 rosbridge-library = self.callPackage ./rosbridge-library {};

 rosbridge-msgs = self.callPackage ./rosbridge-msgs {};

 rosbridge-server = self.callPackage ./rosbridge-server {};

 rosbridge-suite = self.callPackage ./rosbridge-suite {};

 rosbridge-test-msgs = self.callPackage ./rosbridge-test-msgs {};

 rosgraph-msgs = self.callPackage ./rosgraph-msgs {};

 rosidl-adapter = self.callPackage ./rosidl-adapter {};

 rosidl-cli = self.callPackage ./rosidl-cli {};

 rosidl-cmake = self.callPackage ./rosidl-cmake {};

 rosidl-core-generators = self.callPackage ./rosidl-core-generators {};

 rosidl-core-runtime = self.callPackage ./rosidl-core-runtime {};

 rosidl-default-generators = self.callPackage ./rosidl-default-generators {};

 rosidl-default-runtime = self.callPackage ./rosidl-default-runtime {};

 rosidl-dynamic-typesupport = self.callPackage ./rosidl-dynamic-typesupport {};

 rosidl-dynamic-typesupport-fastrtps = self.callPackage ./rosidl-dynamic-typesupport-fastrtps {};

 rosidl-generator-c = self.callPackage ./rosidl-generator-c {};

 rosidl-generator-cpp = self.callPackage ./rosidl-generator-cpp {};

 rosidl-generator-dds-idl = self.callPackage ./rosidl-generator-dds-idl {};

 rosidl-generator-py = self.callPackage ./rosidl-generator-py {};

 rosidl-generator-type-description = self.callPackage ./rosidl-generator-type-description {};

 rosidl-parser = self.callPackage ./rosidl-parser {};

 rosidl-pycommon = self.callPackage ./rosidl-pycommon {};

 rosidl-runtime-c = self.callPackage ./rosidl-runtime-c {};

 rosidl-runtime-cpp = self.callPackage ./rosidl-runtime-cpp {};

 rosidl-runtime-py = self.callPackage ./rosidl-runtime-py {};

 rosidl-typesupport-c = self.callPackage ./rosidl-typesupport-c {};

 rosidl-typesupport-cpp = self.callPackage ./rosidl-typesupport-cpp {};

 rosidl-typesupport-fastrtps-c = self.callPackage ./rosidl-typesupport-fastrtps-c {};

 rosidl-typesupport-fastrtps-cpp = self.callPackage ./rosidl-typesupport-fastrtps-cpp {};

 rosidl-typesupport-interface = self.callPackage ./rosidl-typesupport-interface {};

 rosidl-typesupport-introspection-c = self.callPackage ./rosidl-typesupport-introspection-c {};

 rosidl-typesupport-introspection-cpp = self.callPackage ./rosidl-typesupport-introspection-cpp {};

 rot-conv = self.callPackage ./rot-conv {};

 rplidar-ros = self.callPackage ./rplidar-ros {};

 rpyutils = self.callPackage ./rpyutils {};

 rqt = self.callPackage ./rqt {};

 rqt-action = self.callPackage ./rqt-action {};

 rqt-bag = self.callPackage ./rqt-bag {};

 rqt-bag-plugins = self.callPackage ./rqt-bag-plugins {};

 rqt-common-plugins = self.callPackage ./rqt-common-plugins {};

 rqt-console = self.callPackage ./rqt-console {};

 rqt-controller-manager = self.callPackage ./rqt-controller-manager {};

 rqt-graph = self.callPackage ./rqt-graph {};

 rqt-gui = self.callPackage ./rqt-gui {};

 rqt-gui-cpp = self.callPackage ./rqt-gui-cpp {};

 rqt-gui-py = self.callPackage ./rqt-gui-py {};

 rqt-image-overlay = self.callPackage ./rqt-image-overlay {};

 rqt-image-overlay-layer = self.callPackage ./rqt-image-overlay-layer {};

 rqt-image-view = self.callPackage ./rqt-image-view {};

 rqt-joint-trajectory-controller = self.callPackage ./rqt-joint-trajectory-controller {};

 rqt-moveit = self.callPackage ./rqt-moveit {};

 rqt-msg = self.callPackage ./rqt-msg {};

 rqt-plot = self.callPackage ./rqt-plot {};

 rqt-publisher = self.callPackage ./rqt-publisher {};

 rqt-py-common = self.callPackage ./rqt-py-common {};

 rqt-py-console = self.callPackage ./rqt-py-console {};

 rqt-reconfigure = self.callPackage ./rqt-reconfigure {};

 rqt-robot-dashboard = self.callPackage ./rqt-robot-dashboard {};

 rqt-robot-monitor = self.callPackage ./rqt-robot-monitor {};

 rqt-robot-steering = self.callPackage ./rqt-robot-steering {};

 rqt-runtime-monitor = self.callPackage ./rqt-runtime-monitor {};

 rqt-service-caller = self.callPackage ./rqt-service-caller {};

 rqt-shell = self.callPackage ./rqt-shell {};

 rqt-srv = self.callPackage ./rqt-srv {};

 rqt-tf-tree = self.callPackage ./rqt-tf-tree {};

 rqt-topic = self.callPackage ./rqt-topic {};

 rsl = self.callPackage ./rsl {};

 rt-manipulators-cpp = self.callPackage ./rt-manipulators-cpp {};

 rt-manipulators-examples = self.callPackage ./rt-manipulators-examples {};

 rtabmap = self.callPackage ./rtabmap {};

 rtabmap-conversions = self.callPackage ./rtabmap-conversions {};

 rtabmap-demos = self.callPackage ./rtabmap-demos {};

 rtabmap-examples = self.callPackage ./rtabmap-examples {};

 rtabmap-launch = self.callPackage ./rtabmap-launch {};

 rtabmap-msgs = self.callPackage ./rtabmap-msgs {};

 rtabmap-odom = self.callPackage ./rtabmap-odom {};

 rtabmap-python = self.callPackage ./rtabmap-python {};

 rtabmap-ros = self.callPackage ./rtabmap-ros {};

 rtabmap-rviz-plugins = self.callPackage ./rtabmap-rviz-plugins {};

 rtabmap-slam = self.callPackage ./rtabmap-slam {};

 rtabmap-sync = self.callPackage ./rtabmap-sync {};

 rtabmap-util = self.callPackage ./rtabmap-util {};

 rtabmap-viz = self.callPackage ./rtabmap-viz {};

 rtcm-msgs = self.callPackage ./rtcm-msgs {};

 rti-connext-dds-cmake-module = self.callPackage ./rti-connext-dds-cmake-module {};

 rttest = self.callPackage ./rttest {};

 ruckig = self.callPackage ./ruckig {};

 rviz2 = self.callPackage ./rviz2 {};

 rviz-2d-overlay-msgs = self.callPackage ./rviz-2d-overlay-msgs {};

 rviz-2d-overlay-plugins = self.callPackage ./rviz-2d-overlay-plugins {};

 rviz-assimp-vendor = self.callPackage ./rviz-assimp-vendor {};

 rviz-common = self.callPackage ./rviz-common {};

 rviz-default-plugins = self.callPackage ./rviz-default-plugins {};

 rviz-imu-plugin = self.callPackage ./rviz-imu-plugin {};

 rviz-ogre-vendor = self.callPackage ./rviz-ogre-vendor {};

 rviz-rendering = self.callPackage ./rviz-rendering {};

 rviz-rendering-tests = self.callPackage ./rviz-rendering-tests {};

 rviz-satellite = self.callPackage ./rviz-satellite {};

 rviz-visual-testing-framework = self.callPackage ./rviz-visual-testing-framework {};

 rviz-visual-tools = self.callPackage ./rviz-visual-tools {};

 sdformat-test-files = self.callPackage ./sdformat-test-files {};

 sdl2-vendor = self.callPackage ./sdl2-vendor {};

 self-test = self.callPackage ./self-test {};

 sensor-msgs = self.callPackage ./sensor-msgs {};

 sensor-msgs-py = self.callPackage ./sensor-msgs-py {};

 septentrio-gnss-driver = self.callPackage ./septentrio-gnss-driver {};

 serial-driver = self.callPackage ./serial-driver {};

 service-msgs = self.callPackage ./service-msgs {};

 shape-msgs = self.callPackage ./shape-msgs {};

 shared-queues-vendor = self.callPackage ./shared-queues-vendor {};

 sick-safetyscanners2 = self.callPackage ./sick-safetyscanners2 {};

 sick-safetyscanners2-interfaces = self.callPackage ./sick-safetyscanners2-interfaces {};

 sick-safetyscanners-base = self.callPackage ./sick-safetyscanners-base {};

 sick-safevisionary-base = self.callPackage ./sick-safevisionary-base {};

 sick-safevisionary-driver = self.callPackage ./sick-safevisionary-driver {};

 sick-safevisionary-interfaces = self.callPackage ./sick-safevisionary-interfaces {};

 sick-safevisionary-tests = self.callPackage ./sick-safevisionary-tests {};

 simple-actions = self.callPackage ./simple-actions {};

 simple-launch = self.callPackage ./simple-launch {};

 simulation = self.callPackage ./simulation {};

 slam-toolbox = self.callPackage ./slam-toolbox {};

 slider-publisher = self.callPackage ./slider-publisher {};

 smacc2 = self.callPackage ./smacc2 {};

 smacc2-msgs = self.callPackage ./smacc2-msgs {};

 smach = self.callPackage ./smach {};

 smach-msgs = self.callPackage ./smach-msgs {};

 smach-ros = self.callPackage ./smach-ros {};

 smclib = self.callPackage ./smclib {};

 snowbot-operating-system = self.callPackage ./snowbot-operating-system {};

 soccer-interfaces = self.callPackage ./soccer-interfaces {};

 soccer-marker-generation = self.callPackage ./soccer-marker-generation {};

 soccer-object-msgs = self.callPackage ./soccer-object-msgs {};

 soccer-vision-2d-msgs = self.callPackage ./soccer-vision-2d-msgs {};

 soccer-vision-3d-msgs = self.callPackage ./soccer-vision-3d-msgs {};

 soccer-vision-3d-rviz-markers = self.callPackage ./soccer-vision-3d-rviz-markers {};

 soccer-vision-attribute-msgs = self.callPackage ./soccer-vision-attribute-msgs {};

 social-nav-msgs = self.callPackage ./social-nav-msgs {};

 social-nav-util = self.callPackage ./social-nav-util {};

 sol-vendor = self.callPackage ./sol-vendor {};

 sophus = self.callPackage ./sophus {};

 spacenav = self.callPackage ./spacenav {};

 spdlog-vendor = self.callPackage ./spdlog-vendor {};

 spinnaker-camera-driver = self.callPackage ./spinnaker-camera-driver {};

 splsm-7 = self.callPackage ./splsm-7 {};

 splsm-7-conversion = self.callPackage ./splsm-7-conversion {};

 sqlite3-vendor = self.callPackage ./sqlite3-vendor {};

 srdfdom = self.callPackage ./srdfdom {};

 sros2 = self.callPackage ./sros2 {};

 sros2-cmake = self.callPackage ./sros2-cmake {};

 statistics-msgs = self.callPackage ./statistics-msgs {};

 std-msgs = self.callPackage ./std-msgs {};

 std-srvs = self.callPackage ./std-srvs {};

 steering-controllers-library = self.callPackage ./steering-controllers-library {};

 stereo-image-proc = self.callPackage ./stereo-image-proc {};

 stereo-msgs = self.callPackage ./stereo-msgs {};

 stomp = self.callPackage ./stomp {};

 stubborn-buddies = self.callPackage ./stubborn-buddies {};

 stubborn-buddies-msgs = self.callPackage ./stubborn-buddies-msgs {};

 swri-cli-tools = self.callPackage ./swri-cli-tools {};

 swri-console = self.callPackage ./swri-console {};

 swri-console-util = self.callPackage ./swri-console-util {};

 swri-dbw-interface = self.callPackage ./swri-dbw-interface {};

 swri-geometry-util = self.callPackage ./swri-geometry-util {};

 swri-image-util = self.callPackage ./swri-image-util {};

 swri-math-util = self.callPackage ./swri-math-util {};

 swri-opencv-util = self.callPackage ./swri-opencv-util {};

 swri-prefix-tools = self.callPackage ./swri-prefix-tools {};

 swri-roscpp = self.callPackage ./swri-roscpp {};

 swri-route-util = self.callPackage ./swri-route-util {};

 swri-serial-util = self.callPackage ./swri-serial-util {};

 swri-system-util = self.callPackage ./swri-system-util {};

 swri-transform-util = self.callPackage ./swri-transform-util {};

 system-fingerprint = self.callPackage ./system-fingerprint {};

 system-modes = self.callPackage ./system-modes {};

 system-modes-examples = self.callPackage ./system-modes-examples {};

 system-modes-msgs = self.callPackage ./system-modes-msgs {};

 tango-icons-vendor = self.callPackage ./tango-icons-vendor {};

 tcb-span = self.callPackage ./tcb-span {};

 teleop-tools = self.callPackage ./teleop-tools {};

 teleop-tools-msgs = self.callPackage ./teleop-tools-msgs {};

 teleop-twist-joy = self.callPackage ./teleop-twist-joy {};

 teleop-twist-keyboard = self.callPackage ./teleop-twist-keyboard {};

 tensorrt-cmake-module = self.callPackage ./tensorrt-cmake-module {};

 test-apex-test-tools = self.callPackage ./test-apex-test-tools {};

 test-bond = self.callPackage ./test-bond {};

 test-interface-files = self.callPackage ./test-interface-files {};

 test-msgs = self.callPackage ./test-msgs {};

 tf2 = self.callPackage ./tf2 {};

 tf2-2d = self.callPackage ./tf2-2d {};

 tf2-bullet = self.callPackage ./tf2-bullet {};

 tf2-eigen = self.callPackage ./tf2-eigen {};

 tf2-eigen-kdl = self.callPackage ./tf2-eigen-kdl {};

 tf2-geometry-msgs = self.callPackage ./tf2-geometry-msgs {};

 tf2-kdl = self.callPackage ./tf2-kdl {};

 tf2-msgs = self.callPackage ./tf2-msgs {};

 tf2-py = self.callPackage ./tf2-py {};

 tf2-ros = self.callPackage ./tf2-ros {};

 tf2-ros-py = self.callPackage ./tf2-ros-py {};

 tf2-sensor-msgs = self.callPackage ./tf2-sensor-msgs {};

 tf2-tools = self.callPackage ./tf2-tools {};

 tf-transformations = self.callPackage ./tf-transformations {};

 theora-image-transport = self.callPackage ./theora-image-transport {};

 tile-map = self.callPackage ./tile-map {};

 tinyspline-vendor = self.callPackage ./tinyspline-vendor {};

 tinyxml2-vendor = self.callPackage ./tinyxml2-vendor {};

 tinyxml-vendor = self.callPackage ./tinyxml-vendor {};

 tl-expected = self.callPackage ./tl-expected {};

 tlsf = self.callPackage ./tlsf {};

 tlsf-cpp = self.callPackage ./tlsf-cpp {};

 topic-based-ros2-control = self.callPackage ./topic-based-ros2-control {};

 topic-monitor = self.callPackage ./topic-monitor {};

 topic-statistics-demo = self.callPackage ./topic-statistics-demo {};

 topic-tools = self.callPackage ./topic-tools {};

 topic-tools-interfaces = self.callPackage ./topic-tools-interfaces {};

 tracetools = self.callPackage ./tracetools {};

 tracetools-acceleration = self.callPackage ./tracetools-acceleration {};

 tracetools-analysis = self.callPackage ./tracetools-analysis {};

 tracetools-image-pipeline = self.callPackage ./tracetools-image-pipeline {};

 tracetools-launch = self.callPackage ./tracetools-launch {};

 tracetools-test = self.callPackage ./tracetools-test {};

 trajectory-msgs = self.callPackage ./trajectory-msgs {};

 transmission-interface = self.callPackage ./transmission-interface {};

 tricycle-controller = self.callPackage ./tricycle-controller {};

 tricycle-steering-controller = self.callPackage ./tricycle-steering-controller {};

 turbojpeg-compressed-image-transport = self.callPackage ./turbojpeg-compressed-image-transport {};

 turtle-tf2-cpp = self.callPackage ./turtle-tf2-cpp {};

 turtle-tf2-py = self.callPackage ./turtle-tf2-py {};

 turtlebot3-fake-node = self.callPackage ./turtlebot3-fake-node {};

 turtlebot3-gazebo = self.callPackage ./turtlebot3-gazebo {};

 turtlebot3-msgs = self.callPackage ./turtlebot3-msgs {};

 turtlebot3-simulations = self.callPackage ./turtlebot3-simulations {};

 turtlesim = self.callPackage ./turtlesim {};

 tuw-geometry = self.callPackage ./tuw-geometry {};

 twist-mux = self.callPackage ./twist-mux {};

 twist-mux-msgs = self.callPackage ./twist-mux-msgs {};

 twist-stamper = self.callPackage ./twist-stamper {};

 type-description-interfaces = self.callPackage ./type-description-interfaces {};

 ublox = self.callPackage ./ublox {};

 ublox-dgnss = self.callPackage ./ublox-dgnss {};

 ublox-dgnss-node = self.callPackage ./ublox-dgnss-node {};

 ublox-gps = self.callPackage ./ublox-gps {};

 ublox-msgs = self.callPackage ./ublox-msgs {};

 ublox-nav-sat-fix-hp-node = self.callPackage ./ublox-nav-sat-fix-hp-node {};

 ublox-serialization = self.callPackage ./ublox-serialization {};

 ublox-ubx-interfaces = self.callPackage ./ublox-ubx-interfaces {};

 ublox-ubx-msgs = self.callPackage ./ublox-ubx-msgs {};

 udp-driver = self.callPackage ./udp-driver {};

 udp-msgs = self.callPackage ./udp-msgs {};

 uncrustify-vendor = self.callPackage ./uncrustify-vendor {};

 unique-identifier-msgs = self.callPackage ./unique-identifier-msgs {};

 ur = self.callPackage ./ur {};

 ur-calibration = self.callPackage ./ur-calibration {};

 ur-client-library = self.callPackage ./ur-client-library {};

 ur-controllers = self.callPackage ./ur-controllers {};

 ur-dashboard-msgs = self.callPackage ./ur-dashboard-msgs {};

 ur-description = self.callPackage ./ur-description {};

 ur-moveit-config = self.callPackage ./ur-moveit-config {};

 ur-msgs = self.callPackage ./ur-msgs {};

 urdf = self.callPackage ./urdf {};

 urdf-launch = self.callPackage ./urdf-launch {};

 urdf-parser-plugin = self.callPackage ./urdf-parser-plugin {};

 urdf-sim-tutorial = self.callPackage ./urdf-sim-tutorial {};

 urdf-tutorial = self.callPackage ./urdf-tutorial {};

 urdfdom = self.callPackage ./urdfdom {};

 urdfdom-headers = self.callPackage ./urdfdom-headers {};

 urdfdom-py = self.callPackage ./urdfdom-py {};

 urg-c = self.callPackage ./urg-c {};

 urg-node = self.callPackage ./urg-node {};

 urg-node-msgs = self.callPackage ./urg-node-msgs {};

 usb-cam = self.callPackage ./usb-cam {};

 v4l2-camera = self.callPackage ./v4l2-camera {};

 velocity-controllers = self.callPackage ./velocity-controllers {};

 velodyne = self.callPackage ./velodyne {};

 velodyne-description = self.callPackage ./velodyne-description {};

 velodyne-driver = self.callPackage ./velodyne-driver {};

 velodyne-gazebo-plugins = self.callPackage ./velodyne-gazebo-plugins {};

 velodyne-laserscan = self.callPackage ./velodyne-laserscan {};

 velodyne-msgs = self.callPackage ./velodyne-msgs {};

 velodyne-pointcloud = self.callPackage ./velodyne-pointcloud {};

 velodyne-simulator = self.callPackage ./velodyne-simulator {};

 vision-msgs = self.callPackage ./vision-msgs {};

 vision-msgs-layers = self.callPackage ./vision-msgs-layers {};

 vision-msgs-rviz-plugins = self.callPackage ./vision-msgs-rviz-plugins {};

 vision-opencv = self.callPackage ./vision-opencv {};

 visp = self.callPackage ./visp {};

 visualization-msgs = self.callPackage ./visualization-msgs {};

 vrpn = self.callPackage ./vrpn {};

 vrpn-mocap = self.callPackage ./vrpn-mocap {};

 warehouse-ros = self.callPackage ./warehouse-ros {};

 warehouse-ros-sqlite = self.callPackage ./warehouse-ros-sqlite {};

 webots-ros2 = self.callPackage ./webots-ros2 {};

 webots-ros2-control = self.callPackage ./webots-ros2-control {};

 webots-ros2-driver = self.callPackage ./webots-ros2-driver {};

 webots-ros2-epuck = self.callPackage ./webots-ros2-epuck {};

 webots-ros2-importer = self.callPackage ./webots-ros2-importer {};

 webots-ros2-mavic = self.callPackage ./webots-ros2-mavic {};

 webots-ros2-msgs = self.callPackage ./webots-ros2-msgs {};

 webots-ros2-tesla = self.callPackage ./webots-ros2-tesla {};

 webots-ros2-tests = self.callPackage ./webots-ros2-tests {};

 webots-ros2-tiago = self.callPackage ./webots-ros2-tiago {};

 webots-ros2-turtlebot = self.callPackage ./webots-ros2-turtlebot {};

 webots-ros2-universal-robot = self.callPackage ./webots-ros2-universal-robot {};

 wiimote = self.callPackage ./wiimote {};

 wiimote-msgs = self.callPackage ./wiimote-msgs {};

 xacro = self.callPackage ./xacro {};

 yaml-cpp-vendor = self.callPackage ./yaml-cpp-vendor {};

 zbar-ros = self.callPackage ./zbar-ros {};

 zenoh-bridge-dds = self.callPackage ./zenoh-bridge-dds {};

 zlib-point-cloud-transport = self.callPackage ./zlib-point-cloud-transport {};

 zmqpp-vendor = self.callPackage ./zmqpp-vendor {};

 zstd-point-cloud-transport = self.callPackage ./zstd-point-cloud-transport {};

 zstd-vendor = self.callPackage ./zstd-vendor {};

}
